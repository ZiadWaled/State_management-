import 'package:bloc/bloc.dart';
import 'package:state_managment/iconCubit/state.dart';

// class IconBottomCubit extends Cubit<IconStates> {
//   IconBottomCubit() : super(IconInitState());
// int? selectedButtonIndex;
//   void selectButton() {
//     emit(IconInitState());
//   }
// }

class SelectedButtonCubit extends Cubit<int> {
  SelectedButtonCubit() : super(0);

  void selectButton(int index) {
    emit(index);
  }
}