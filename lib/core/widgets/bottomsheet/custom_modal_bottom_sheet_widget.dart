import 'package:flutter/material.dart';
import 'package:imei_scanner/core/theme/colors/app_colors.dart';
import 'package:imei_scanner/core/utils/app_utils.dart';
import 'package:imei_scanner/core/widgets/bottomsheet/modal_scroll_controller.dart';

class CustomModalBottomWidget extends StatelessWidget {
  final Widget? title;
  final List<Widget>? minChildren;
  final List<Widget>? maxChildren;
  final EdgeInsets padding;

  const CustomModalBottomWidget({
    Key? key,
    this.title,
    this.minChildren,
    this.maxChildren,
    this.padding = EdgeInsets.zero,
  })  : assert(minChildren != null || maxChildren != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxHeight:
            size.height * 0.85 - MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: BoxDecoration(
        color: ThemeColors.light.white,
        borderRadius: const BorderRadius.only(
          topRight: AppUtils.kRadius16,
          topLeft: AppUtils.kRadius16,
        ),
      ),
      child: SafeArea(
        minimum: EdgeInsets.only(
          top: padding.top,
          left: padding.left,
          right: padding.right,
          bottom: MediaQuery.of(context).viewInsets.bottom + padding.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null) title!,
            if ((minChildren ?? []).isNotEmpty) ...(minChildren ?? []),
            if ((minChildren ?? []).isEmpty)
              if (maxChildren != null)
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    controller: ModalScrollController.of(context),
                    children: maxChildren!,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
