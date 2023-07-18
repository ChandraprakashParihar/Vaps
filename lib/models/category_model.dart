// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Category {
  final String categoryName;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  Category({
    required this.categoryName,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
  });

  Category copyWith({
    String? categoryName,
    IconData? icon,
    Color? iconColor,
    Color? backgroundColor,
  }) {
    return Category(
      categoryName: categoryName ?? this.categoryName,
      icon: icon ?? this.icon,
      iconColor: iconColor ?? this.iconColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
