// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTile extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  const SearchTile({
    Key? key,
    required this.label,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
          color: backgroundColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0,
              blurRadius: 15,
            )
          ],
          borderRadius: BorderRadius.circular(11.r)),
      child: ListTile(
          dense: false,
          leading: Container(
              height: 35.h,
              width: 35.w,
              decoration: BoxDecoration(
                color: iconColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
              )),
          title: Text(
            label,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(),
          )),
    );
  }
}
