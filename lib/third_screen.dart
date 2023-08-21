import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/cubit_screens/third_screen_by_cubit.dart';

import 'package:state_managment/replace_ui_cubit/cubit.dart';
import 'package:state_managment/replace_ui_cubit/state.dart';

class ReplaceUiScreen extends StatefulWidget {
  ReplaceUiScreen({Key? key}) : super(key: key);

  @override
  _ReplaceUiScreenState createState() => _ReplaceUiScreenState();
}

class _ReplaceUiScreenState extends State<ReplaceUiScreen> {
  late ReplaceUiCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = ReplaceUiCubit();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReplaceUiScreenn(
        cubit: _cubit,
      ),
    );
  }
}

class ReplaceUiScreenn extends StatelessWidget {
  final ReplaceUiCubit cubit;

  const ReplaceUiScreenn({required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          BlocBuilder<ReplaceUiCubit, ReplaceUiState>(
            bloc: cubit,
            builder: (BuildContext context, state) {
              if (state is ShowText) {
                return const Text(
                  'Hi, I am Ziad Waled',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 28,
                  ),
                );
              } else if (state is ShowCubitImage) {
                return Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ2cqn5rgbQlGIhuY79v5BgkanYgzMQzXckI7JA8vfFg&s',
                );
              } else if (state is ShowBlueColor) {
                return Container(
                  color: Colors.blueAccent,
                  height: 200,
                  width: 200,
                );
              } else {
                return Container(); // Placeholder container
              }
            },
          ),
          ElevatedButton(
            onPressed: () {
              cubit.showText();
            },
            child: const Text('show text'),
          ),
          ElevatedButton(
            onPressed: () {
              cubit.showBlueColor();
            },
            child: const Text('show blue container'),
          ),
          ElevatedButton(
            onPressed: () {
              cubit.showCubitImage();
            },
            child: const Text('show picture'),
          ),
          ElevatedButton(
            onPressed: () {
              cubit.reset();
            },
            child: const Text('reset'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReblaceUiScreenByCubit()),
              );
            },
            child: const Text(
                'go to the same this screen but by cubit'
            ),),
        ],
      ),
    );
  }
}