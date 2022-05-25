import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qazo_nomozlar/views/onbording/state/onbording_state.dart';

class OnBordingCubit extends Cubit<OnBordingState> {
  OnBordingCubit() : super(OnBordingInitial());
  TabController? tabController;
  a() {}
}
