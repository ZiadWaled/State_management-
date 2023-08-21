import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:state_managment/replace_ui_cubit/cubit.dart';
import 'package:state_managment/replace_ui_cubit/state.dart';

class ReblaceUiScreenByCubit extends StatelessWidget {
  ReblaceUiScreenByCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReplaceUiCubit(),
      child: const Scaffold(body: ReblaceUiScreenn()),
    );

  }
}
class ReblaceUiScreenn extends StatelessWidget {
  const ReblaceUiScreenn({super.key});

  @override
  Widget build(BuildContext context) {
          return  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                BlocBuilder<ReplaceUiCubit, ReplaceUiState>(
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



                  ElevatedButton(onPressed: (){
                    context.read<ReplaceUiCubit>().showText();
                  }, child: const Text('show text')),
                  ElevatedButton(onPressed: (){
                    context.read<ReplaceUiCubit>().showBlueColor();
                  }, child: const Text('show blue container')),
                  ElevatedButton(onPressed: (){
                    context.read<ReplaceUiCubit>().showCubitImage();
                  }, child: const Text('show picture')),
                  ElevatedButton(onPressed: (){
                    context.read<ReplaceUiCubit>().reset();
                  }, child: const Text('reset')),
              ],
            ),
          );
  }
}
