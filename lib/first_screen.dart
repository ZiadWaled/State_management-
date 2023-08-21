import 'package:flutter/material.dart';
import 'package:state_managment/cubit_screens/IconScrollby%20Cubit.dart';
import 'package:state_managment/cubit_screens/text_field_by_cubit.dart';

import 'second_screen.dart';

class Task1Screen extends StatefulWidget {
  @override
  _Task1ScreenState createState() => _Task1ScreenState();
}

class _Task1ScreenState extends State<Task1Screen> {
  int? selectedButtonIndex;
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedButtonIndex = index;
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.all(10),
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
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                obscureText: _isObscured, // تحديد إظهار أو إخفاء النص
                decoration: InputDecoration(
                  labelText: 'كلمة المرور',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isObscured = !_isObscured; // تبديل حالة إخفاء النص
                      });
                    },
                    child: Icon(
                      _isObscured ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              // Inside your widget's build method or any button's onPressed callback
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen2()),
                  );
                },
              child: const Text(
              'go to next screen'
            ),),
            TextButton(// Inside your widget's build method or any button's onPressed callback
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IconCubit()),
                );
              },child: const Text(
                'go to Icons by cubit'
            ),),
            TextButton(// Inside your widget's build method or any button's onPressed callback
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TextFormFieldByCubit()),
                  );
                },
              child: const Text(
                'go to text field by cubit'
            ),),
          ],
        ),
      ),
    );
  }
}
