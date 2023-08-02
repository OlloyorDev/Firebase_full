import 'package:flutter/cupertino.dart';
import 'package:imei_scanner/core/extension/build_context_extension.dart';
import 'package:imei_scanner/core/utils/app_utils.dart';

class DevelopmentWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const DevelopmentWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.settings,
            size: 80,
            color: context.color.primary,
          ),
          AppUtils.kBoxHeight16,
          Text(
            title,
            style: context.textStyle.boldCallOut,
            textAlign: TextAlign.center,
          ),
          AppUtils.kBoxHeight8,
          Text(
            subTitle,
            style: context.textStyle.bodyMedium
                .copyWith(color: context.color.grayTextColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
