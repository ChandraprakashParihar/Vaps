// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaps/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 51.h,
            width: 51.w,
            decoration: BoxDecoration(
              color: category.backgroundColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              category.icon,
              color: category.iconColor,
              size: 25.r,
            ),
          ),
          Text(
            category.categoryName,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(fontSize: 11.sp),
          )
        ],
      ),
    );
  }
}
