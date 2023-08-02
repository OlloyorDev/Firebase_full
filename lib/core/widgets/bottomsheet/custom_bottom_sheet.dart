import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imei_scanner/core/extension/build_context_extension.dart';
import 'package:imei_scanner/core/extension/size_extension.dart';
import 'package:imei_scanner/core/theme/colors/app_colors.dart';
import 'package:imei_scanner/core/utils/app_utils.dart';

typedef WidgetScrollBuilder = Widget Function(
  BuildContext context,
  ScrollController? controller,
);

Future<T?> customModalBottomSheet<T>({
  required BuildContext context,
  required WidgetScrollBuilder builder,
  bool isDismissible = true,
  bool enableDrag = true,
  double blurValue = 3,
  bool isScrollControlled = false,
  double height = 0.85,
}) async {
  return showModalBottomSheet(
    context: context,
    elevation: 0,
    isScrollControlled: true,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    backgroundColor: Colors.transparent,
    constraints: BoxConstraints(
      maxHeight: context.mediaQuery.size.height * height,
      minHeight: context.mediaQuery.size.height * 0.2,
    ),
    builder: (_) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurValue, sigmaY: blurValue),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: ClipRRect(
                borderRadius: AppUtils.kBorderRadiusTop12,
                child: Material(
                  color: ThemeColors.light.white,
                  surfaceTintColor: ThemeColors.light.white,
                  child: isScrollControlled
                      ? DraggableScrollableSheet(
                          initialChildSize: 1,
                          minChildSize: 0.5,
                          expand: false,
                          snap: true,
                          builder: (context, controller) {
                            return builder(context, controller);
                          },
                        )
                      : builder(context, null),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

Future<T?> showSelectImageSheet<T>(
  BuildContext context, {
  String title = '',
  String actionTitleOne = '',
  String actionTitleTwo = '',
  required Function() actionOne,
  required Function() actionTwo,
}) async {
  if (Platform.isIOS) {
    return showCupertinoModalPopup(
      context: context,
      builder: (_) {
        return CupertinoActionSheet(
          title: Text(
            title,
            style: context.textStyle.boldCallOut,
          ),
          actions: [
            CupertinoActionSheetAction(
              onPressed: actionOne,
              child: Text(actionTitleOne),
            ),
            CupertinoActionSheetAction(
              onPressed: actionTwo,
              child: Text(actionTitleTwo),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            child: Text(context.translate("cancel")),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        );
      },
    );
  } else {
    return await showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Padding(
          padding: AppUtils.kPaddingAll12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  title,
                  style: context.textStyle.boldTitle2,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.photo),
                title: Text(
                  actionTitleOne,
                  style: context.textStyle.regularFootNote,
                ),
                onTap: actionOne,
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: Text(
                  actionTitleTwo,
                  style: context.textStyle.regularFootNote,
                ),
                onTap: actionTwo,
              ),
            ],
          ),
        );
      },
    );
  }
}
// Future<T?> cupertinoSheet<T>({
//   required BuildContext context,
//   required Widget title,
//   required List<Widget> children,
// }) async {
//   final size = MediaQuery.of(context).size;
//   if (Platform.isIOS) {
//     return await showCupertinoModalPopup(
//       context: context,
//       builder: (ctx) {
//         return CupertinoActionSheet(
//           title: title,
//           actions: List.generate(
//             children.length,
//             (index) => CupertinoActionSheetAction(
//               onPressed: () {},
//               child: children[index],
//             ),
//           ),
//           cancelButton: CupertinoActionSheetAction(
//             child: Text(AppTranslations.of(context).cancel),
//             onPressed: () {
//               Navigator.of(context, rootNavigator: true).pop();
//             },
//           ),
//         );
//       },
//     );
//   } else {
//     return await showModalBottomSheet(
//       context: context,
//       builder: (ctx) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             title,
//             ...children,
//           ],
//         );
//       },
//     );
//   }
// }

void showDateTimeDialog({
  required BuildContext context,
  required Widget child,
}) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (context) => Container(
      height: 216,
      padding: const EdgeInsets.only(top: 6.0),
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      color: context.color.white,
      child: SafeArea(
        top: false,
        child: child,
      ),
    ),
  );
}
