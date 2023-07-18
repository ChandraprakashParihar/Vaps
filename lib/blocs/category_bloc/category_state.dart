import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/category_model.dart';

class CategoryState {
  final List<Category> categories = [
    Category(
        categoryName: "Fee Details",
        icon: Icons.receipt_long,
        iconColor: Colors.redAccent,
        backgroundColor: const Color.fromARGB(255, 255, 200, 200)),
    Category(
        categoryName: "Student Birth Day Report",
        icon: Icons.fastfood,
        iconColor: Colors.deepPurple,
        backgroundColor: const Color.fromARGB(255, 229, 215, 255)),
    Category(
        categoryName: "COE Report",
        icon: Icons.wallet,
        iconColor: Colors.amber,
        backgroundColor: const Color.fromARGB(255, 255, 244, 211)),
    Category(
        categoryName: "Salary Details",
        icon: Icons.payments,
        iconColor: Colors.amber,
        backgroundColor: const Color.fromARGB(255, 255, 244, 211)),
    Category(
        categoryName: "Employee Details",
        icon: Icons.badge,
        iconColor: Colors.redAccent,
        backgroundColor: const Color.fromARGB(255, 255, 200, 200)),
    Category(
        categoryName: "Overall Fee",
        icon: Icons.receipt_long,
        iconColor: Colors.redAccent,
        backgroundColor: const Color.fromARGB(255, 255, 200, 200)),
    Category(
        categoryName: "Leave Approval",
        icon: Icons.description,
        iconColor: Colors.purple,
        backgroundColor: const Color.fromARGB(255, 249, 218, 255)),
    Category(
        categoryName: "View Notice",
        icon: Icons.receipt_long,
        iconColor: Colors.redAccent,
        backgroundColor: const Color.fromARGB(255, 255, 200, 200)),
    Category(
        categoryName: "Student",
        icon: Icons.person,
        iconColor: Colors.cyan,
        backgroundColor: const Color.fromARGB(255, 200, 249, 255)),
    Category(
        categoryName: "Salary Slip",
        icon: Icons.receipt_long,
        iconColor: Colors.redAccent,
        backgroundColor: const Color.fromARGB(255, 255, 200, 200)),
    Category(
        categoryName: "Staff Notice Board",
        icon: Icons.corporate_fare,
        iconColor: Colors.redAccent,
        backgroundColor: const Color.fromARGB(255, 255, 200, 200)),
    Category(
      categoryName: "Punch Report",
      icon: Icons.document_scanner,
      iconColor: Colors.green,
      backgroundColor: const Color.fromARGB(255, 217, 255, 218),
    ),
  ];
  CategoryState();
}
