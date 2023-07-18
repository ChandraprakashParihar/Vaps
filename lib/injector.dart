// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaps/blocs/admission_bloc/admission_bloc.dart';
import 'package:vaps/blocs/category_bloc/category_bloc.dart';
import 'package:vaps/blocs/employee_bloc/employee_bloc.dart';
import 'package:vaps/blocs/nav_bloc/nav_bloc.dart';

class Injector extends StatelessWidget {
  final Widget router;
  const Injector({
    Key? key,
    required this.router,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => NavBloc()),
      BlocProvider(create: (context) => EmployeeBloc()),
      BlocProvider(create: (context) => CategoryBloc()),
      BlocProvider(create: (context) => EmployeeBloc()),
      BlocProvider(create: (context) => AdmissionBloc()),
    ], child: router);
  }
}
