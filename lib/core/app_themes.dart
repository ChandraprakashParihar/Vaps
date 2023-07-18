import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaps/core/app_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.appColor,
      colorScheme: ColorScheme.fromSwatch(brightness: Brightness.light),
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(11.r),
                  topRight: Radius.circular(11.r))),
          color: AppColors.appColor,
          surfaceTintColor: Colors.white,
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              fontSize: 18.sp)),
      fontFamily: "Montserrat",
      textTheme: TextTheme(
          labelSmall: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 12.sp,
              fontWeight: FontWeight.bold),
          labelMedium: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 15.sp,
              fontWeight: FontWeight.bold),
          labelLarge: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 21.sp,
              fontWeight: FontWeight.bold),
          bodySmall: TextStyle(fontFamily: "Lato", fontSize: 14.sp)));
}
