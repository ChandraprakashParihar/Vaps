import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vaps/blocs/nav_bloc/nav_bloc.dart';
import 'package:vaps/blocs/nav_bloc/nav_event.dart';
import 'package:vaps/blocs/nav_bloc/nav_state.dart';

class NavScreen extends StatefulWidget {
  static const String routeName = "/nav-screen";
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBloc, NavState>(builder: (context, state) {
      return Scaffold(
        body: IndexedStack(
          index: state.index,
          children: state.screens,
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(8.r),
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0,
              blurRadius: 10,
            )
          ]),
          child: GNav(
            backgroundColor: Colors.white,
            curve: Curves.easeInOutCubic,
            gap: 8.w,
            padding: EdgeInsets.all(11.r),
            selectedIndex: state.index,
            tabs: state.tabs,
            onTabChange: (index) {
              context.read<NavBloc>().add(UpdateIndexEvent(index: index));
            },
          ),
        ),
      );
    });
  }
}
