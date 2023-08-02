import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imei_scanner/core/extension/build_context_extension.dart';
import 'package:imei_scanner/core/theme/colors/app_colors.dart';
import 'package:imei_scanner/core/utils/app_utils.dart';

typedef Validator = String? Function(String?);
typedef OnChanged = void Function(String);
typedef OnFieldSubmitted = void Function(String);

class CustomTextField extends StatelessWidget {
  final VoidCallback? onTap;
  final TextEditingController controller;
  final Color? fillColor;
  final Validator? validator;
  final OnChanged onChanged;
  final TextInputType textInputType;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextCapitalization textCapitalization;
  final Color? cursorColor;
  final bool autofocus;
  final bool readOnly;
  final bool enabled;
  final bool obscure;
  final List<TextInputFormatter>? textInputFormatter;
  final TextInputAction textInputAction;
  final String? hintText;
  final String? errorText;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? prefix;
  final Widget? prefixIcon;
  final TextStyle? prefixTextStyle;
  final TextStyle? suffixTextStyle;
  final TextStyle? labelTextStyle;
  final String? labelText;
  final String? prefixText;
  final String? suffixText;
  final bool labelInTextField;
  final EdgeInsetsGeometry? contentPadding;
  final double? cursorHeight;
  final OnFieldSubmitted? onFieldSubmitted;
  final bool? showError;
  final bool? showCursor;

  const CustomTextField({
    Key? key,
    this.onTap,
    this.fillColor,
    this.autofocus = false,
    this.readOnly = false,
    required this.controller,
    this.showError,
    this.validator,
    required this.onChanged,
    this.textInputType = TextInputType.name,
    this.focusNode,
    this.textCapitalization = TextCapitalization.none,
    this.cursorColor,
    this.enabled = true,
    this.obscure = false,
    this.textInputFormatter,
    this.textInputAction = TextInputAction.done,
    this.nextFocusNode,
    this.hintText,
    this.errorText,
    this.suffix,
    this.suffixIcon,
    this.prefix,
    this.prefixIcon,
    this.prefixTextStyle,
    this.suffixTextStyle,
    this.prefixText,
    this.suffixText,
    this.labelTextStyle,
    this.labelText,
    this.labelInTextField = true,
    this.contentPadding,
    this.cursorHeight,
    this.onFieldSubmitted,
    this.showCursor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null && !labelInTextField)
          Text(
            labelText!,
            style: labelTextStyle,
          ),
        if (labelText != null && !labelInTextField) AppUtils.kGap6,
        TextFormField(
          key: key,
          onTap: onTap,
          autofocus: autofocus,
          style: context.textStyle.regularCallOut,
          controller: controller,
          validator: validator ??
              (v) {
                if (v == null || v.isEmpty) {
                  return;
                }
              },
          onChanged: onChanged,
          keyboardType: textInputType,
          focusNode: focusNode,
          textCapitalization: textCapitalization,
          cursorColor: cursorColor ?? ThemeColors.light.primary,
          enableInteractiveSelection: true,
          obscureText: obscure,
          enabled: enabled,
          textInputAction: textInputAction,
          showCursor: showCursor,
          readOnly: readOnly,
          onEditingComplete: () {
            if (nextFocusNode != null) {
              nextFocusNode?.requestFocus();
            } else {
              focusNode?.unfocus();
            }
          },
          onFieldSubmitted: (value) {
            if (onFieldSubmitted != null) {
              onFieldSubmitted!(value);
            }
            if (nextFocusNode != null) {
              nextFocusNode?.requestFocus();
            } else {
              focusNode?.unfocus();
            }
          },
          inputFormatters:
              textInputFormatter != null ? textInputFormatter! : null,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: context.color.primary),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: context.color.greyForDoughnut, width: .5),
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: fillColor,
            labelText: labelInTextField ? labelText : null,
            labelStyle: labelTextStyle ?? context.textStyle.titleMiddle,
            hintText: hintText,
            hintStyle: context.textStyle.regularSubHeadline.copyWith(
              color: context.color.midGray3,
            ),
            errorText: showError ?? false ? errorText : null,
            contentPadding: contentPadding ?? EdgeInsets.zero,
            suffix: suffix,
            suffixIcon: suffixIcon,
            prefix: prefix,
            prefixIcon: prefixIcon,
            prefixText: prefixText,
            prefixStyle: prefixTextStyle,
            suffixText: suffixText,
            suffixStyle: suffixTextStyle,
          ),
          cursorHeight: cursorHeight,
        ),
      ],
    );
  }
}
