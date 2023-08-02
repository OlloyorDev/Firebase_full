import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:imei_scanner/core/extension/build_context_extension.dart';
import 'package:imei_scanner/core/extension/size_extension.dart';

class AppUtils {
  AppUtils._();

  /// box
  static const kGap = Gap(0);
  static const kGap2 = Gap(2);
  static const kGap4 = Gap(4);
  static const kGap6 = Gap(6);
  static const kGap8 = Gap(8);
  static const kGap12 = Gap(12);
  static const kGap16 = Gap(16);
  static const kGap24 = Gap(24);
  static const kGap32 = Gap(32);
  static const kGap40 = Gap(40);

  static const kBoxWidth4 = SizedBox(width: 4);
  static const kBoxWidth6 = SizedBox(width: 6);
  static const kBoxWidth8 = SizedBox(width: 8);
  static const kBoxWidth10 = SizedBox(width: 10);
  static const kBoxWidth12 = SizedBox(width: 12);
  static const kBoxWidth13 = SizedBox(width: 13);
  static const kBoxWidth16 = SizedBox(width: 16);
  static const kBoxWidth19 = SizedBox(width: 19);
  static const kBoxWidth24 = SizedBox(width: 24);
  static const kBoxWidth32 = SizedBox(width: 32);
  static const kBoxWidth34 = SizedBox(width: 34);
  static const kBoxHeight4 = SizedBox(height: 4);
  static const kBoxHeight6 = SizedBox(height: 6);
  static const kBoxHeight8 = SizedBox(height: 8);
  static const kBoxHeight10 = SizedBox(height: 10);
  static const kBoxHeight12 = SizedBox(height: 12);
  static const kBoxHeight16 = SizedBox(height: 16);
  static const kBoxHeight24 = SizedBox(height: 24);
  static const kBoxHeight36 = SizedBox(height: 36);

  /// divider
  static const kDivider = Divider(height: 1, thickness: 1);
  static const kPad16Divider = Padding(
    padding: EdgeInsets.only(left: 16),
    child: Divider(height: 1, thickness: 1),
  );
  static const kPadHor16Divider = Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Divider(height: 1, thickness: 1),
  );

  /// spacer
  static const kSpacer = Spacer();

  /// padding
  static const kPaddingAll4 = EdgeInsets.all(4);
  static const kPaddingAll6 = EdgeInsets.all(6);
  static const kPaddingAll8 = EdgeInsets.all(8);
  static const kPaddingAll12 = EdgeInsets.all(12);
  static const kPaddingAll14 = EdgeInsets.all(14);
  static const kPaddingAll16 = EdgeInsets.all(16);
  static const kPaddingAllB16 = EdgeInsets.fromLTRB(16, 16, 16, 0);
  static const kPaddingBottom2 = EdgeInsets.fromLTRB(0, 0, 0, 2);
  static const kPaddingBottom12 = EdgeInsets.fromLTRB(0, 0, 0, 12);
  static const kPaddingOnlyRightLeft48 = EdgeInsets.fromLTRB(48, 0, 16, 0);

  static const kPaddingAll24 = EdgeInsets.all(24);
  static const kPaddingTop14 = EdgeInsets.only(top: 14);
  static const kPaddingHorizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingHorizontal12 = EdgeInsets.symmetric(horizontal: 12);
  static const kPaddingVertical16 = EdgeInsets.symmetric(vertical: 16);
  static const kPaddingHor32Ver20 =
      EdgeInsets.symmetric(horizontal: 32, vertical: 20);
  static const kPaddingHor16Ver12 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const kPaddingHor16Ver24 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 24);
  static const kPaddingHor16Ver8 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  static const kPaddingHor12Ver8 =
      EdgeInsets.symmetric(horizontal: 12, vertical: 8);
  static const kPaddingHor12Ver6 =
      EdgeInsets.symmetric(horizontal: 12, vertical: 6);
  static const kPaddingHor8Ver4 =
      EdgeInsets.symmetric(horizontal: 8, vertical: 4);
  static const kPaddingLeft12Right6Ver8 =
      EdgeInsets.only(left: 12, right: 6, top: 8, bottom: 8);
  static const kPaddingLeft12Right8Ver10 =
      EdgeInsets.only(left: 12, right: 8, top: 10, bottom: 10);
  static const kPaddingLeft16Right16 = EdgeInsets.fromLTRB(16, 0, 16, 0);
  static const kPadingLeft16Right16bottom16 = EdgeInsets.fromLTRB(16, 0, 16, 0);
  static const kPadingLeft19Right16 = EdgeInsets.fromLTRB(19, 0, 16, 0);
  static const kPadingLeft12Right12Top12 = EdgeInsets.fromLTRB(12, 12, 12, 0);
  static const kPadingLeft16Top8 = EdgeInsets.fromLTRB(16, 8, 16, 0);
  static const kPaddingAll16Top0 = EdgeInsets.fromLTRB(16, 0, 16, 16);
  static const kPaddingTop16left12 = EdgeInsets.fromLTRB(12, 16, 12, 16);
  static const kPaddingTop12Bottom12All16 = EdgeInsets.fromLTRB(16, 12, 16, 12);
  static const kPaddingTop8Bot8Left16 = EdgeInsets.fromLTRB(16, 8, 16, 8);
  static const kPaddingTop4Bot4 = EdgeInsets.fromLTRB(0, 4, 0, 4);

  /// border radius
  static const kRadius = Radius.zero;
  static const kRadius8 = Radius.circular(8);
  static const kRadius12 = Radius.circular(12);
  static const kRadius16 = Radius.circular(16);
  static const kBorderRadius = BorderRadius.all(Radius.circular(0));
  static const kBorderRadius2 = BorderRadius.all(Radius.circular(2));
  static const kBorderRadius4 = BorderRadius.all(Radius.circular(4));
  static const kBorderRadius6 = BorderRadius.all(Radius.circular(6));
  static const kBorderRadius8 = BorderRadius.all(Radius.circular(8));
  static const kBorderRadius10 = BorderRadius.all(Radius.circular(10));
  static const kBorderRadius12 = BorderRadius.all(Radius.circular(12));
  static const kBorderRadius16 = BorderRadius.all(Radius.circular(16));
  static const kBorderRadius32 = BorderRadius.all(Radius.circular(32));
  static const kBorderRadius48 = BorderRadius.all(Radius.circular(48));
  static const kBorderRadius64 = BorderRadius.all(Radius.circular(64));
  static const kBorderRadius100 = BorderRadius.all(Radius.circular(100));

  static const kBorderTopRadius10 =
      BorderRadius.vertical(top: Radius.circular(10));
  static const kBorderBottomRadius10 =
      BorderRadius.vertical(bottom: Radius.circular(10));
  static const kBorderBottomRadius12 =
      BorderRadius.vertical(bottom: Radius.circular(12));
  static const kBorderRadiusTop12 =
      BorderRadius.vertical(top: Radius.circular(12));
  static const kBorderBottomRadius24 =
      BorderRadius.vertical(bottom: Radius.circular(24.0));
  static const kBorderTopRadius24 =
      BorderRadius.vertical(top: Radius.circular(24));
  static const kBorderRadiusCountry = BorderRadius.only(
    bottomLeft: Radius.circular(12),
    bottomRight: Radius.circular(12),
  );
  static const kBorderTopBottomRight8 = BorderRadius.only(
    topRight: Radius.circular(8),
    bottomRight: Radius.circular(8),
  );

  // static const kTabBarBoxDecoration = BoxDecoration(
  //   color: AppColors.bgGrey2,
  //   borderRadius: kBorderRadius8,
  // );
  // static const kTabBarBoxDecorationDark = BoxDecoration(
  //   color: ThemeColors.backgroundDark,
  //   borderRadius: kBorderRadius8,
  // );
  static const kTabBoxDecoration = BoxDecoration(
    borderRadius: kBorderRadius8,
  );
  static const kTabBoxDecoration12 = BoxDecoration(
    borderRadius: kBorderRadius12,
  );

  static const kShapeRoundedNone = RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
  );
  static const kShapeRoundedAll12 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );
  static const kShapeRoundedAll10 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );

  static const kShapeRoundedTop12 = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(12),
      topRight: Radius.circular(12),
    ),
  );
  static const kShapeRoundedBottom12 = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(12),
      bottomLeft: Radius.circular(12),
    ),
  );

  static void showSnackBar(
    BuildContext context, {
    required String text,
  }) {
    final snackBar = SnackBar(
      backgroundColor: context.color.primary,
      content: Text(text, style: const TextStyle(fontSize: 24)),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showErrorSnackBar(
    BuildContext context, {
    required String text,
  }) {
    final snackBar = SnackBar(
      margin: context.kMargin16,
      padding: const EdgeInsets.all(16),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.red,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Error',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
