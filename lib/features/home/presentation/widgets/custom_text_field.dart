import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imei_scanner/core/extension/build_context_extension.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool showError;
  final TextEditingController? controller;
  final ScrollController? scrollController;
  final TextInputType? keyboardType;
  final TextInputAction? inputAction;
  final int? maxLines;
  final int? minLines;
  final String? titleText;
  final Function(String?)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final bool? obscureText;
  final bool readOnly;
  final Color? fillColor;
  final bool? autofocus;
  final bool? enabled;
  final Function()? onTap;
  final Widget? suffixIcon;
  final Function()? onComplete;
  final Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  final BoxConstraints? constraints;
  final String? prefixText;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.errorText,
    this.showError = false,
    this.controller,
    this.scrollController,
    this.keyboardType,
    this.inputAction,
    this.maxLines,
    this.onChanged,
    this.inputFormatters,
    this.obscureText,
    this.suffixIcon,
    this.titleText,
    this.enabled,
    this.onTap,
    this.readOnly = false,
    this.fillColor,
    this.minLines,
    this.onComplete,
    this.validator,
    this.autofocus,
    this.contentPadding,
    this.constraints,
    this.prefixText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (titleText != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              '$titleText',
              style: context.textStyle.titleMiddle,
            ),
          ),
        TextFormField(
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          validator: (value) => validator!(value),
          textCapitalization: TextCapitalization.sentences,
          readOnly: readOnly,
          enabled: enabled ?? true,
          autofocus: autofocus ?? false,
          obscureText: obscureText ?? false,
          controller: controller,
          scrollController: scrollController,
          onTap: onTap,
          style: TextStyle(
            fontSize: 14,
            height: 16 / 14,
            color: context.color.black,
            fontWeight: FontWeight.w400,
          ),
          textInputAction: inputAction ?? TextInputAction.done,
          onChanged: onChanged,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            constraints: constraints,
            contentPadding: contentPadding,
            isDense: true,
            suffixIcon: suffixIcon,
            errorText: showError ? errorText : null,
            hintText: hintText,
            prefixText: prefixText,
            prefixStyle: TextStyle(
              fontSize: 14,
              height: 16 / 14,
              color: context.color.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          cursorColor: context.color.primary,
          keyboardType: keyboardType,
          maxLines: maxLines ?? 1,
          minLines: minLines ?? 1,
          scrollPhysics: const NeverScrollableScrollPhysics(),
          inputFormatters: inputFormatters,
          onEditingComplete: onComplete,
        ),
      ],
    );
  }
}
