import 'package:flutter/material.dart';
import 'package:state_managment/cubit_screens/IconScrollby%20Cubit.dart';
import 'package:state_managment/cubit_screens/text_field_by_cubit.dart';



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/cubit_screens/third_screen_by_cubit.dart';
import 'package:state_managment/first_screen.dart';
import 'package:state_managment/toggel/cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task1Screen(),
    );
  }
}

