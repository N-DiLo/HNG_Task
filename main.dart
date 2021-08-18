import 'package:flutter/material.dart';
import 'package:hng_task/second_screen.dart';
import 'package:hng_task/splash_screen.dart';

void main() => runApp(HNG_Task());

class HNG_Task extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG Stage Two Task',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SplashScreen(),
    );
  }
}
class Firstpage extends StatefulWidget {
const Firstpage ({Key? key}) : super(key: key);

  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _full_name = new TextEditingController();
  TextEditingController _address = new TextEditingController();
  TextEditingController _slack_name = new TextEditingController();
  TextEditingController _phone_no = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HNG Task Two | First Screen',
    ), ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              labelText: 'Enter Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _full_name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Full Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _address,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Address'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _slack_name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Slack Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _phone_no,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Phone No.'),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SecondPage(email: _email.text, full_name: _full_name.text,
                address: _address.text, slack_name: _slack_name.text, phone_no: _phone_no.text)
              ),
                   );
              },
                  child: Text('See Details'))
          ],
      )
    );
  }
}
