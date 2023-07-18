import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaps/core/app_themes.dart';
import 'package:vaps/core/routes.dart';
import 'package:vaps/injector.dart';
import 'package:vaps/screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Injector(router: VapsApp()));
}

class VapsApp extends StatelessWidget {
  const VapsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: "VapsApp",
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          themeMode: ThemeMode.light,
          onGenerateRoute: AppRoutes.onGenerateRoute,
          home: child,
        );
      },
      child: const LoginScreen(),
    );
  }
}
