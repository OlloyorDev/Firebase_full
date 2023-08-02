import 'package:flutter/material.dart';
import 'package:imei_scanner/constants/constants.dart';
import 'package:imei_scanner/core/extension/build_context_extension.dart';
import 'package:imei_scanner/core/utils/app_utils.dart';
import 'package:imei_scanner/core/widgets/flash.dart';

class Snack {
  Snack._();

  static void showToast(String text) {
    AppConstants.scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        backgroundColor: Colors.blue,
        content: Text(text),
      ),
    );
  }

  static void showSnackBar({
    FlashBehavior style = FlashBehavior.floating,
    String? title,
    String? content,
    Widget? titleWidget,
    Widget? contentWidget,
    Color backgroundColor = Colors.green,
    required BuildContext context,
  }) {
    showFlash(
      context: context,
      duration: const Duration(seconds: 3),
      builder: (_, controller) {
        return Flash(
          controller: controller,
          margin: AppUtils.kPaddingAll16,
          borderRadius: AppUtils.kBorderRadius16,
          backgroundColor: backgroundColor,
          behavior: style,
          position: FlashPosition.top,
          child: FlashBar(
            title: titleWidget ?? Text(title ?? ''),
            content: contentWidget ?? Text(content ?? ''),
          ),
        );
      },
    );
  }

  static void showErrorSnackBar({
    FlashBehavior style = FlashBehavior.floating,
    String? title,
    String? message,
    Widget? titleWidget,
    Widget? messageWidget,
    int? duration,
    required BuildContext context,
  }) {
    showFlash(
      context: context,
      duration: Duration(seconds: duration ?? 5),
      builder: (_, controller) {
        return Flash(
          controller: controller,
          margin: AppUtils.kPaddingAll16,
          borderRadius: AppUtils.kBorderRadius16,
          backgroundColor: Colors.red,
          brightness: Brightness.light,
          behavior: style,
          position: FlashPosition.top,
          child: FlashBar(
            title: titleWidget ??
                Text(
                  title ?? 'error',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
            content: messageWidget ??
                Text(
                  message ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
          ),
        );
      },
    );
  }

  static void showOrderSuccess({
    required String title,
    required String subTitle,
    Color? backColor,
    required BuildContext context,
  }) {
    showFlash(
      duration: const Duration(seconds: 3),
      context: context,
      builder: (context, controller) {
        return Flash.dialog(
          useSafeArea: false,
          backgroundColor: backColor,
          controller: controller,
          alignment: Alignment.topCenter,
          barrierColor: Colors.transparent,
          child: Material(
            color: backColor,
            child: SafeArea(
              bottom: false,
              minimum: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: context.textStyle.snackBarTitle.copyWith(
                      color: context.color.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 8, top: 12, left: 12, right: 12),
                    child: Text(
                      subTitle,
                      style: context.textStyle.regularSubHeadline.copyWith(
                        color: context.color.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.only(bottom: 8, left: 12, right: 12),
                  //   child: Text(
                  //     "we_are_happy".tr,
                  //     style: AppStyles.whiteBoldText15,
                  //     textAlign: TextAlign.center,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
