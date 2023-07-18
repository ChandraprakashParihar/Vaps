// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaps/core/app_colors.dart';

class AppButton extends StatelessWidget {
  final String labelName;
  final VoidCallback onPressed;
  const AppButton({
    Key? key,
    required this.labelName,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
      padding: EdgeInsets.symmetric(horizontal: 51.w, vertical: 10.h),
      color: AppColors.appColor,
      onPressed: onPressed,
      child: Text(
        labelName,
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
