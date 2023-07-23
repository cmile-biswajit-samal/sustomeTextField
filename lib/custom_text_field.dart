import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:textfieldsd/string_constant.dart';

import 'color_constant.dart';
import 'number_constant.dart';

class CustomTextField extends StatefulWidget {
  //String
  final String textFieldHint;
  final String? helperText;
  final String? counterText;

  //Boolean
  final bool obscureText;
  final bool? isFilled;
  final bool? isEnabled;
  final bool? isReadOnly;

  //Integers
  final int? maxLength;
  final int? maxLines;
  final int? minLines;

  //Objects
  final TextInputAction? textInputAction;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function? onChanged;
  final Function? onTap;
  final String? Function(String?) validator;

  final List<TextInputFormatter>? inputFormatter;

  final FocusNode? focusNode;

  const CustomTextField({
    Key? key,
    required this.validator,
    required this.textFieldHint,
    required this.textInputType,
    this.textInputAction = TextInputAction.next,
    this.obscureText = StringConstant.boolFalse,
    required this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLength,
    this.onChanged,
    this.helperText,
    this.isFilled = StringConstant.boolTrue,
    this.isEnabled,
    this.counterText,
    this.isReadOnly,
    this.inputFormatter,
    this.focusNode,
    this.onTap,
    this.minLines,
    this.maxLines
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          // top: NumberConstant.doubleTen,
          // bottom: NumberConstant.doubleTen,
        ),
        child: TextFormField(
          validator: widget.validator,
          cursorColor: textFormFieldElementsColor,
          focusNode: widget.focusNode,
          inputFormatters: widget.inputFormatter,
          readOnly: widget.isReadOnly ?? StringConstant.boolFalse,
          enabled: widget.isEnabled,
          controller: widget.controller,
          style: const TextStyle(
            fontSize: NumberConstant.doubleFourteen,
            fontWeight: FontWeight.w400,
            color: blackColor,
          ),
          decoration: InputDecoration(
              hintStyle: const TextStyle(
                  color: blackColor54,
                  fontSize: NumberConstant.doubleFourteen,
                  fontWeight: FontWeight.w400),
              hintText: widget.textFieldHint,
              counterText: StringConstant.textEmpty,
              focusColor: textFormFieldElementsColor,
              // labelStyle: const TextStyle(
              //   color: textFormFieldElementsColor,
              // ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: blackColor12),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: textFormFieldElementsColor),
              ),
              labelText: widget.textFieldHint,
              contentPadding: const EdgeInsets.only(
                top: NumberConstant.doubleFourteen,
                bottom: NumberConstant.doubleThirteen,
                left: NumberConstant.doubleEighteen,
              ),
              filled: widget.isFilled,
              fillColor: buttonColor,
              suffixIcon: widget.suffixIcon,
              helperText: widget.helperText,
              prefixIcon: widget.prefixIcon),
          keyboardType: widget.textInputType,
          obscureText: widget.obscureText,
          maxLength: widget.maxLength,
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          onChanged: (value) {
            if (widget.onChanged != null) {
              widget.onChanged!();
            }
          },
          onTap: () {
            if (widget.onTap != null) {
              widget.onTap!();
            }
          },
        ));
  }
}
