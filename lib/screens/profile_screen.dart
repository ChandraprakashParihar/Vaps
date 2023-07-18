// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaps/blocs/employee_bloc/employee_bloc.dart';

import '../blocs/employee_bloc/employee_state.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeBloc, EmployeeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Profile'),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.text_alignleft,
                    color: Colors.white,
                  )),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.bell,
                      color: Colors.white,
                    ))
              ],
            ),
            body: SafeArea(
                child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.r),
                                  topRight: Radius.circular(12.r)),
                              child: Image.network(
                                  "https://images.pexels.com/photos/2305098/pexels-photo-2305098.jpeg?auto=compress&cs=tinysrgb&w=600"),
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Text(
                              state.employee.userName,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(),
                            ),
                            Text(
                              state.employee.location,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(),
                            ),
                            TextTile(
                                textOne: "Contact Number",
                                textTwo: state.employee.phoneNumber),
                            TextTile(
                                textOne: "Employee Code",
                                textTwo: state.employee.employeeCode),
                            TextTile(
                                textOne: "Email Id",
                                textTwo: state.employee.email),
                            SizedBox(
                              height: 15.h,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: 110.h,
                          left: 139.w,
                          child: CircleAvatar(
                            radius: 40.r,
                            backgroundImage: const NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHDRlp-KGr_M94k_oor4Odjn2UzbAS7n1YoA&usqp=CAU"),
                          ))
                    ],
                  )
                ],
              ),
            )),
          ),
        );
      },
    );
  }
}

class TextTile extends StatelessWidget {
  final String textOne;
  final String textTwo;
  const TextTile({
    Key? key,
    required this.textOne,
    required this.textTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        style: Theme.of(context)
            .textTheme
            .labelSmall!
            .copyWith(color: Colors.grey[700]),
        children: [
          TextSpan(
            text: textOne,
          ),
          const TextSpan(text: " : "),
          TextSpan(text: textTwo)
        ]));
  }
}
