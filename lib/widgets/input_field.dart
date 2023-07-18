// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vaps/core/app_colors.dart';

class InputField extends StatelessWidget {
  final IconData leadingIcon;
  final Widget? trailingIcon;
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const InputField({
    Key? key,
    required this.leadingIcon,
    this.trailingIcon,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(11.r),
      color: AppColors.lightBlue,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          prefixIcon: Icon(
            leadingIcon,
            color: AppColors.appColor,
          ),
          suffixIcon: trailingIcon,
        ),
      ),
    );
  }
}
