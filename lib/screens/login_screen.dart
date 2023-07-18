import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaps/core/app_colors.dart';
import 'package:vaps/screens/nav_screen.dart';
import 'package:vaps/widgets/app_button.dart';
import 'package:vaps/widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isChecked = false;
  bool isNotVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r))),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.r),
                          topRight: Radius.circular(25.r)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Container(
                              width: 51.w,
                              height: 51.w,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent),
                              child: Image.network(
                                "https://hindubabynames.info/downloads/wp-content/themes/hbn_download/download/education-companies/bangalore-university-bengaluru-logo.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            title: Text(
                              "St. James School",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(),
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Text(
                            "Login",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(),
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          const Text("USER ID"),
                          SizedBox(
                            height: 9.h,
                          ),
                          InputField(
                              obscureText: false,
                              leadingIcon: Icons.person_outlined,
                              controller: emailController,
                              hintText: "User Id"),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text("PASSWORD"),
                          SizedBox(
                            height: 9.h,
                          ),
                          InputField(
                              obscureText: isNotVisible,
                              leadingIcon: Icons.lock_outlined,
                              trailingIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isNotVisible = !isNotVisible;
                                  });
                                },
                                child: isNotVisible
                                    ? const Icon(
                                        Icons.visibility_off_outlined,
                                        color: AppColors.appColor,
                                      )
                                    : const Icon(
                                        Icons.visibility_outlined,
                                        color: AppColors.appColor,
                                      ),
                              ),
                              controller: passwordController,
                              hintText: "Password"),
                          SizedBox(
                            height: 9.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "FORGOT PASSWORD ?",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        color: const Color.fromARGB(
                                            255, 80, 113, 204),
                                        decoration: TextDecoration.underline,
                                        decorationColor: const Color.fromARGB(
                                            255, 80, 113, 204),
                                        fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }),
                              Expanded(
                                  flex: 3,
                                  child: Text.rich(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      TextSpan(
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall!
                                              .copyWith(
                                                  fontWeight:
                                                      FontWeight.normal),
                                          children: const [
                                            TextSpan(
                                                text: "I agree to all your "),
                                            TextSpan(
                                                text: "T&C",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(text: " and "),
                                            TextSpan(
                                                text: "Privacy Policy",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ])))
                            ],
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Center(
                              child: AppButton(
                                  labelName: "Login",
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed(NavScreen.routeName)))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
