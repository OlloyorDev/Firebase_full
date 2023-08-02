import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imei_scanner/core/extension/build_context_extension.dart';
import 'package:imei_scanner/core/utils/app_utils.dart';

Future customShowDialog({
  String content = '',
  required BuildContext context,
  required String title,
  required String bodyTitle,
  required String firstButtonName,
  required String secondButtonName,
  required VoidCallback firstButtonTap,
  required VoidCallback secondButtonTap,
}) {
  return showDialog(
    context: context,
    builder: (_) {
      return AlertDialog(
        contentPadding: AppUtils.kPaddingHorizontal16,
        content: Text(
          content,
          textAlign: TextAlign.center,
          style: context.textStyle.regularFootNote.copyWith(
            color: context.color.black,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: context.textStyle.boldBody,
            ),
            AppUtils.kBoxHeight8,
            Text(
              bodyTitle,
              style: context.textStyle.bodySmall
                  .copyWith(color: context.color.grayTextColor, fontSize: 15),
            ),
          ],
        ),
        actions: [
          AppUtils.kBoxHeight16,
          TextButton(
            onPressed: firstButtonTap,
            child: Text(
              firstButtonName,
              style: context.textStyle.boldSubHeadline.copyWith(
                color: context.color.primary,
              ),
            ),
          ),
          TextButton(
            onPressed: secondButtonTap,
            child: Text(
              secondButtonName,
              style: context.textStyle.boldSubHeadline.copyWith(
                color: context.color.primary,
              ),
            ),
          ),
          // Row(
          //   children: [

          //     Expanded(
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //             backgroundColor: context.color.midGray2),
          //         onPressed: firstButtonTap,
          //         child: Center(
          //           child: Text(
          //             firstButtonName,
          //             style: context.textStyle.boldSubHeadline.copyWith(
          //               color: context.color.primary,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     AppUtils.kBoxWidth8,

          //     Expanded(
          //       child: ElevatedButton(
          //         onPressed: secondButtonTap,
          //         child: Center(
          //           child: Text(
          //             secondButtonName,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // )
        ],
      );
    },
  );
}

Future showCustomDialog({
  required BuildContext context,
  required String title,
  required String bodyTitle,
  required String firstButtonName,
  required String secondButtonName,
  required VoidCallback firstButtonTap,
  required VoidCallback secondButtonTap,
}) {
  return showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(
          bodyTitle,
          style: context.textStyle.bodySmall
              .copyWith(color: context.color.grayTextColor),
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: firstButtonTap,
            child: Text(firstButtonName),
          ),
          CupertinoDialogAction(
            onPressed: secondButtonTap,
            child: Text(
              secondButtonName,
            ),
          ),
        ],
      );
    },
  );
}
