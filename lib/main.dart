import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Widget App'),
        ),
        body: Center(
          child: CustomWidget(
            labelText: 'Custom Button',
            onPressed: () {
              // Add your custom button logic here
              print('Button Pressed');
            },
          ),
        ),
      ),
    );
  }
}






class CustomWidget extends StatelessWidget {
  final String labelText;
  final VoidCallback onPressed;

  CustomWidget({required this.labelText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(labelText),
        );
    }
}