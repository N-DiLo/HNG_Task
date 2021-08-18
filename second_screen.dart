import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  String text_details;

  SecondPage({required this.text_details});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Details: ${text_details}',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
        ],
      )
    );
  }
}
