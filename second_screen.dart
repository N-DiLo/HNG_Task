import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  String email, full_name, address, slack_name, phone_no;

  SecondPage({required this.email, required this.full_name, required this.address,
              required this.slack_name, required this. phone_no});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email: ${email}',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
          Text('Full Name: ${full_name}',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Text('Adress: ${address}',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Text('Slack Name: ${slack_name}',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Text('Phone No: ${phone_no}',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        ],
      )
    );
  }
}
