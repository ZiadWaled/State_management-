import 'package:flutter/material.dart';
import 'package:state_managment/third_screen.dart';

import 'cubit_screens/radio_button_by_cubit.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int? _selectedRadioValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RadioButtomByCubit()),
                );
              },
              child: const Text(
                  'go to Radio by Cubit'
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReplaceUiScreen()),
                );
              },
              child: const Text(
                  'go to next screen '
              ),),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(20.0),
              itemCount: 20,
              itemBuilder: (context, index) {
                return RadioListTile(
                  title: Text('خيار ${index + 1}'),
                  value: index,
                  groupValue: _selectedRadioValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedRadioValue = value as int;
                    });
                  },
                  activeColor: Colors.red,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

