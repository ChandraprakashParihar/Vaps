import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vaps/screens/calendar_screen.dart';
import 'package:vaps/screens/dashboard_screen.dart';
import 'package:vaps/screens/message_screen.dart';
import 'package:vaps/screens/profile_screen.dart';

class NavState {
  NavState({required this.index});
  int index;
  List<Widget> screens = const [
    DashboardScreen(),
    MessageScreen(),
    CalendarScreen(),
    ProfileScreen()
  ];
  List<GButton> tabs = const [
    GButton(
        icon: CupertinoIcons.house_fill,
        text: "Dashboard",
        textColor: Colors.purple,
        iconColor: Colors.grey,
        iconActiveColor: Colors.purple,
        active: true,
        backgroundColor: Color.fromARGB(255, 243, 235, 255)),
    GButton(
      icon: CupertinoIcons.bubble_left,
      text: "Message",
      textColor: Colors.cyan,
      iconColor: Colors.grey,
      iconActiveColor: Colors.cyan,
      active: true,
      backgroundColor: Color.fromARGB(255, 236, 253, 255),
    ),
    GButton(
      icon: CupertinoIcons.calendar,
      text: "Calendar",
      textColor: Colors.red,
      iconColor: Colors.grey,
      iconActiveColor: Colors.red,
      active: true,
      backgroundColor: Color.fromARGB(255, 255, 236, 235),
    ),
    GButton(
        icon: Icons.person,
        text: "Profile",
        textColor: Colors.teal,
        iconColor: Colors.grey,
        iconActiveColor: Colors.teal,
        active: true,
        backgroundColor: Color.fromARGB(255, 230, 255, 252))
  ];
}
