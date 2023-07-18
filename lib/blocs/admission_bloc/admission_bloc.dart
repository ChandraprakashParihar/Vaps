import 'package:flutter_bloc/flutter_bloc.dart';

import 'admission_event.dart';
import 'admission_state.dart';

class AdmissionBloc extends Bloc<AdmissionEvent, AdmissionState> {
  AdmissionBloc() : super(AdmissionState());
}
