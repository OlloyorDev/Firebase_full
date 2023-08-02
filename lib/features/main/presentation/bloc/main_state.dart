part of 'main_bloc.dart';

class MainState extends Equatable {
  final BottomMenu menu;

  const MainState({
    this.menu = BottomMenu.home,
  });

  MainState copyWith({
    BottomMenu? menu,
  }) {
    return MainState(menu: menu ?? this.menu);
  }

  @override
  List<Object?> get props => [menu];
}

enum BottomMenu {
  home,
  scanner,
  favorites,
}
