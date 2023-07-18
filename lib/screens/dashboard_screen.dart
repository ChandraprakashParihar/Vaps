import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaps/blocs/category_bloc/category_bloc.dart';
import 'package:vaps/blocs/category_bloc/category_state.dart';
import 'package:vaps/models/category_model.dart';
import 'package:vaps/widgets/category_card.dart';
import 'package:vaps/widgets/pre_admission_card.dart';
import 'package:vaps/widgets/search_tile.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
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
        body: Container(
          padding: EdgeInsets.only(top: 7.h, left: 7.w, right: 7.w),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PreAdmissionCard(),
              SizedBox(
                height: 11.h,
              ),
              Text(
                "Quick Search",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(),
              ),
              SizedBox(
                height: 11.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: SearchTile(
                          label: "Student",
                          icon: Icons.person,
                          iconColor: Colors.purple,
                          backgroundColor: Color.fromARGB(255, 250, 223, 255))),
                  Expanded(
                      child: SearchTile(
                    label: "Staff",
                    icon: Icons.groups,
                    iconColor: Colors.teal,
                    backgroundColor: Color.fromARGB(255, 227, 242, 255),
                  ))
                ],
              ),
              SizedBox(
                height: 11.h,
              ),
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(),
              ),
              SizedBox(
                height: 11.h,
              ),
              Expanded(child: BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                return GridView.builder(
                    itemCount: state.categories.length,
                    physics: const ClampingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4, childAspectRatio: 0.90),
                    itemBuilder: (context, index) {
                      final Category category = state.categories[index];
                      return CategoryCard(category: category);
                    });
              }))
            ],
          ),
        ),
      ),
    );
  }
}
