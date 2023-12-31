library flappy_search_bar;

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:imei_scanner/core/theme/colors/AppIcons_icons.dart';

mixin ControllerListener<T> on State<SearchBar<T>> {
  void onListChanged(List<T> items) {}

  void onLoading() {}

  void onClear() {}

  void onError(Error error) {}
}

class SearchBarController<T> {
  final List<T> _list = [];
  final List<T> _filteredList = [];
  final List<T> _sortedList = [];
  late TextEditingController _searchQueryController;
  String? _lastSearchedText;
  Future<List<T>> Function(String? text)? _lastSearchFunction;
  ControllerListener? _controllerListener;
  int Function(T a, T b)? _lastSorting;
  dynamic _cancelableOperation;
  late int minimumChars;

  void setTextController(
      TextEditingController searchQueryController, int minimunChars) {
    _searchQueryController = searchQueryController;
    minimumChars = minimunChars;
  }

  void setListener(ControllerListener controllerListener) {
    _controllerListener = controllerListener;
  }

  void clear() {
    _controllerListener?.onClear();
  }

  Future<void> _search(
      String? text, Future<List<T>> Function(String? text) onSearch) async {
    _controllerListener?.onLoading();
    try {
      if (_cancelableOperation != null &&
          (!_cancelableOperation!.isCompleted ||
              !_cancelableOperation!.isCanceled)) {
        await _cancelableOperation!.cancel();
      }
      _cancelableOperation = _cancelableOperation?.fromFuture(
        onSearch(text),
        onCancel: () => {},
      );

      final List<T> items = await _cancelableOperation?.value;
      _lastSearchFunction = onSearch;
      _lastSearchedText = text;
      _list.clear();
      _filteredList.clear();
      _sortedList.clear();
      _lastSorting = null;
      _list.addAll(items);
      _controllerListener?.onListChanged(_list);
    } catch (error) {
      _controllerListener?.onError(error as Error);
    }
  }

  void injectSearch(
      String? searchText, Future<List<T>> Function(String? text) onSearch) {
    if (searchText != null && searchText.length >= minimumChars) {
      _searchQueryController.text = searchText;
      _search(searchText, onSearch);
    }
  }

  void replayLastSearch() {
    if (_lastSearchFunction != null && _lastSearchedText != null) {
      _search(_lastSearchedText, _lastSearchFunction!);
    }
  }

  void removeFilter() {
    _filteredList.clear();
    if (_lastSorting == null) {
      _controllerListener?.onListChanged(_list);
    } else {
      _sortedList
        ..clear()
        ..addAll(List<T>.from(_list))
        ..sort(_lastSorting);
      _controllerListener?.onListChanged(_sortedList);
    }
  }

  void removeSort() {
    _sortedList.clear();
    _lastSorting = null;
    _controllerListener
        ?.onListChanged(_filteredList.isEmpty ? _list : _filteredList);
  }

  void sortList(int Function(T a, T b) sorting) {
    _lastSorting = sorting;
    _sortedList
      ..clear()
      ..addAll(List<T>.from(_filteredList.isEmpty ? _list : _filteredList))
      ..sort(sorting);
    _controllerListener?.onListChanged(_sortedList);
  }

  void filterList(bool Function(T item) filter) {
    _filteredList
      ..clear()
      ..addAll(_sortedList.isEmpty
          ? _list.where(filter).toList()
          : _sortedList.where(filter).toList());
    _controllerListener?.onListChanged(_filteredList);
  }
}

/// Signature for a function that creates [ScaledTile] for a given index.
typedef IndexedScaledTileBuilder = Widget Function(int index);

class SearchBar<T> extends StatefulWidget {
  /// Future returning searched items
  final Future<List<T>> Function(String? text) onSearch;

  /// List of items showed by default
  final List<T> suggestions;

  /// Callback returning the widget corresponding to a Suggestion item
  final Widget Function(T? item, int index)? buildSuggestion;

  /// Minimum number of chars required for a search
  final int minimumChars;

  /// Callback returning the widget corresponding to an item found
  final Widget Function(T? item, int index) onItemFound;

  /// Callback returning the widget corresponding to an Error while searching
  final Widget Function(Error error)? onError;

  /// Cooldown between each call to avoid too many
  final Duration debounceDuration;

  /// Widget to show when loading
  final Widget loader;

  /// Widget to show when no item were found
  final Widget emptyWidget;

  /// Widget to show by default
  final Widget? placeHolder;

  /// Widget showed on left of the search bar
  final Widget icon;

  /// Widget placed between the search bar and the results
  final Widget? header;

  /// Hint text of the search bar
  final String hintText;

  /// TextStyle of the hint text
  final TextStyle hintStyle;

  /// Color of the icon when search bar is active
  final Color iconActiveColor;

  /// Text style of the text in the search bar
  final TextStyle textStyle;

  /// Widget shown for cancellation
  final Widget cancellationWidget;

  /// Callback when cancel button is triggered
  final Function()? onCancelled;

  /// Focus node
  final FocusNode? focusNode;

  /// TextField autoFocus = false
  final bool autoFocus;

  /// Controller used to be able to sort, filter or replay the search
  final SearchBarController? searchBarController;

  /// Number of items displayed on cross axis
  final int crossAxisCount;

  /// Weather the list should take the minimum place or not
  final bool shrinkWrap;

  /// have cancel widget haveCancelWidget = true
  final bool haveCancelWidget;

  /// Set the scrollDirection
  final Axis scrollDirection;

  /// Spacing between tiles on main axis
  final double mainAxisSpacing;

  /// Spacing between tiles on cross axis
  final double crossAxisSpacing;

  /// Set a padding on the search bar
  final EdgeInsetsGeometry searchBarPadding;

  /// Set a padding on the header
  final EdgeInsetsGeometry headerPadding;

  /// Set a padding on the list
  final EdgeInsetsGeometry listPadding;

  const SearchBar({
    Key? key,
    required this.onSearch,
    required this.onItemFound,
    this.searchBarController,
    this.minimumChars = 3,
    this.debounceDuration = const Duration(milliseconds: 500),
    this.loader = const Center(child: CircularProgressIndicator()),
    this.onError,
    this.emptyWidget = const SizedBox.shrink(),
    this.header,
    this.placeHolder,
    this.autoFocus = false,
    this.icon = const Icon(
      AppIcons.search,
      color: Colors.black,
    ),
    this.hintText = '',
    this.hintStyle = const TextStyle(color: Color.fromRGBO(142, 142, 147, 1)),
    this.iconActiveColor = Colors.black,
    this.textStyle = const TextStyle(color: Colors.black),
    this.cancellationWidget = const Text('Cancel'),
    this.haveCancelWidget = true,
    this.onCancelled,
    this.suggestions = const [],
    this.buildSuggestion,
    this.crossAxisCount = 1,
    this.shrinkWrap = false,
    this.scrollDirection = Axis.vertical,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.listPadding = EdgeInsets.zero,
    this.searchBarPadding = EdgeInsets.zero,
    this.headerPadding = EdgeInsets.zero,
    this.focusNode,
  }) : super(key: key);

  @override
  SearchBarState createState() => SearchBarState<T>();
}

class SearchBarState<T> extends State<SearchBar<T>>
    with TickerProviderStateMixin, ControllerListener<T> {
  bool _loading = false;
  bool _isTitle = true;
  Widget? _error;
  final _searchQueryController = TextEditingController();
  Timer? _debounce;
  late bool animate = false;
  List<T?> _list = [];
  late SearchBarController searchBarController;

  @override
  void initState() {
    super.initState();
    searchBarController =
        widget.searchBarController ?? SearchBarController<T>();
    searchBarController
      ..setListener(this)
      ..setTextController(
        _searchQueryController,
        widget.minimumChars,
      );
  }

  @override
  void onListChanged(List<T?> items) {
    setState(() {
      _loading = false;
      _list = items;
    });
  }

  @override
  void onLoading() {
    setState(() {
      _loading = true;
      _error = null;
      animate = true;
    });
  }

  @override
  void onClear() {
    _cancel();
  }

  @override
  void onError(Error error) {
    setState(() {
      _loading = false;
      _error =
          widget.onError != null ? widget.onError!(error) : const Text('error');
    });
  }

  Future<void> _onTextChanged(String newText) async {
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }

    _debounce = Timer(widget.debounceDuration, () async {
      if (newText.length >= widget.minimumChars) {
        await searchBarController._search(newText, widget.onSearch);
      } else {
        setState(() {
          _list.clear();
          _error = null;
          _loading = false;
          animate = false;
        });
      }
    });
  }

  void _cancel() {
    if (widget.onCancelled != null) {
      widget.onCancelled?.call();
    }

    setState(() {
      _searchQueryController.clear();
      _list.clear();
      _isTitle = !_isTitle;
      _error = null;
      _loading = false;
      animate = false;
    });
  }

  Widget _buildListView(
    List<T?> items,
    Widget Function(T? item, int index) builder,
  ) {
    return ListView.builder(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      padding: widget.listPadding,
      physics: const BouncingScrollPhysics(),
      itemCount: items.length,
      shrinkWrap: widget.shrinkWrap,
      scrollDirection: widget.scrollDirection,
      itemBuilder: (_, index) {
        return builder(items[index], index);
      },
    );
  }

  Widget? _buildContent() {
    if (_error != null) {
      return _error;
    } else if (_loading) {
      return widget.loader;
    } else if (_searchQueryController.text.length < widget.minimumChars) {
      if (widget.placeHolder != null) return widget.placeHolder;
      return _buildListView(
        widget.suggestions,
        widget.buildSuggestion ?? widget.onItemFound,
      );
    } else if (_list.isNotEmpty) {
      return _buildListView(_list, widget.onItemFound);
    } else {
      return widget.emptyWidget;
    }
  }

  final duration = const Duration(milliseconds: 100);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: widget.searchBarPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      primaryColor: widget.iconActiveColor,
                    ),
                    child: TextField(
                      controller: _searchQueryController,
                      onChanged: _onTextChanged,
                      style: widget.textStyle,
                      focusNode: widget.focusNode,
                      autofocus: widget.autoFocus,
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: widget.icon,
                        ),
                        fillColor: const Color(0xFFF5F5F5),
                        suffixIcon: Visibility(
                          visible: _searchQueryController.text.length >=
                              widget.minimumChars,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(
                              maxWidth: 36,
                              maxHeight: 36,
                            ),
                            style: const ButtonStyle(
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.zero),
                            ),
                            iconSize: 18,
                            icon: const Icon(
                              Icons.close,
                              color: Color(0xFF9AA6AC),
                            ),
                            onPressed: () {
                              _onTextChanged('');
                              _searchQueryController.clear();
                            },
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                        border: InputBorder.none,
                        hintText: widget.hintText,
                        hintStyle: widget.hintStyle,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                ),
              ),
              widget.haveCancelWidget && animate
                  ? GestureDetector(
                      onTap: _cancel,
                      child: AnimatedOpacity(
                        opacity: animate ? 1.0 : 0,
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: animate ? 1000 : 0),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 8),
                          child: Text('Cancel'),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
        Padding(
          padding: widget.headerPadding,
          child: widget.header ?? const SizedBox(),
        ),
        Expanded(
          child: _buildContent() ?? const SizedBox(),
        ),
      ],
    );
  }
}
