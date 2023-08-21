
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/toggel/state.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordVisibilityCubit extends Cubit<bool> {
  PasswordVisibilityCubit() : super(true);

  void toggleVisibility() {
    emit(!state);
  }
}