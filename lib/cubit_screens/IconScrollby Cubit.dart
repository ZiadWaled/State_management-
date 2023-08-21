import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/iconCubit/cubit.dart';

class IconCubit extends StatelessWidget {
  IconCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectedButtonCubit(),
      child: Scaffold(body: IconBCubit()),
    );

  }
}

class IconBCubit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BlocBuilder<SelectedButtonCubit, int>(
        builder: (context, selectedButtonIndex) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<SelectedButtonCubit>().selectButton(index);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: selectedButtonIndex == index
                        ? Colors.red
                        : Colors.grey,
                  ),
                  child: Center(
                    child: Text(
                      'filter $index',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}