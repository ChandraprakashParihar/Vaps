// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vaps/blocs/admission_bloc/admission_bloc.dart';
import 'package:vaps/core/app_colors.dart';

import '../blocs/admission_bloc/admission_state.dart';

class PreAdmissionCard extends StatelessWidget {
  const PreAdmissionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdmissionBloc, AdmissionState>(
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 165.h,
          child: Card(
            margin: EdgeInsets.zero,
            color: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.w, vertical: 3.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11.r),
                      topRight: Radius.circular(11.r),
                    ),
                    color: AppColors.secondColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pre Admission",
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(color: AppColors.green),
                      ),
                      Card(
                        elevation: 0.0,
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.r),
                          child: Text(
                            state.preAdmission.batch,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(fontSize: 10.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 30.w),
                        height: 100.h,
                        width: 100.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.transparent),
                        child: PieChart(PieChartData(
                            centerSpaceRadius: 0,
                            sectionsSpace: 1,
                            startDegreeOffset: 90,
                            borderData: FlBorderData(show: false),
                            sections: [
                              PieChartSectionData(
                                  value: double.parse(state.preAdmission.paid),
                                  color: Colors.yellowAccent),
                              PieChartSectionData(
                                  value: double.parse(
                                      state.preAdmission.confirmed),
                                  color: Colors.cyanAccent),
                              PieChartSectionData(
                                  value: double.parse(
                                      state.preAdmission.registered),
                                  color: Colors.pinkAccent),
                            ]))),
                    SizedBox(
                      width: 11.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const DataLabel(
                                text: "Registered",
                                value: "198",
                                color: Colors.pinkAccent),
                            SizedBox(
                              width: 15.w,
                            ),
                            const DataLabel(
                                text: "Paid", value: "0", color: Colors.yellow),
                          ],
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        const DataLabel(
                            text: "Confirmed",
                            value: "198",
                            color: Colors.cyanAccent)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 11.h,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DataLabel extends StatelessWidget {
  final String text;
  final String value;
  final Color color;
  const DataLabel({
    Key? key,
    required this.text,
    required this.value,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 5.r,
          backgroundColor: color,
        ),
        SizedBox(
          width: 11.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text),
            Text(
              value,
              style: Theme.of(context).textTheme.labelSmall,
            )
          ],
        )
      ],
    );
  }
}
