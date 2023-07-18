import 'package:flutter_bloc/flutter_bloc.dart';

import 'nav_event.dart';
import 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(NavState(index: 0)) {
    on<UpdateIndexEvent>((event, emit) {
      emit(NavState(index: event.index));
    });
  }
}
