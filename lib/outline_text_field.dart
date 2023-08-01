

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testriverpodproject/text_style.dart';

class OutlineTextField extends StatefulWidget {
  const OutlineTextField(
      {Key? key,
      this.isReadOnly = false,
      this.onTap,
      required this.placeHolder,
      this.capitalization = TextCapitalization.sentences,
      this.keyboard,
      this.onChange,
      this.action,
      required this.obscureText,
      // this.initial,
      this.preferPlaceholderStyle,
      this.preferStyle,
      this.suffix,
      this.prefix})
      : super(key: key);
  final String placeHolder;
  final bool obscureText;
  final TextCapitalization capitalization;
  final TextInputType? keyboard;
  final Widget? prefix;
  final Widget? suffix;

  // final String? initial;
  final TextInputAction? action;
  final TextStyle? preferPlaceholderStyle;
  final TextStyle? preferStyle;
  final bool isReadOnly;
  final void Function()? onTap;
  final void Function(String)? onChange;

  @override
  State<OutlineTextField> createState() => _OutlineTextFieldState();
}

class _OutlineTextFieldState extends State<OutlineTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      maxLines: 1,
      obscureText: widget.obscureText,
      obscuringCharacter: "*",
      style: widget.preferStyle ??
          TextStyles.defaultStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 21.sp,
          ),
      placeholder: widget.placeHolder,
      placeholderStyle: widget.preferPlaceholderStyle ??
          TextStyles.defaultStyle.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
              color: Colors.grey),
      controller: _controller,
      textCapitalization: widget.capitalization,
      prefix: widget.prefix,
      suffix: widget.suffix,
      keyboardType: widget.keyboard,
      onSubmitted: widget.onChange,
      onChanged: widget.onChange,
      padding: EdgeInsets.all(0.03.sw),
      textInputAction: widget.action,
      readOnly: widget.isReadOnly,
      onTap: widget.onTap,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.horizontal(left: Radius.zero, right: Radius.zero),

          border: Border.all(color: Colors.white)),
    );
  }
}
