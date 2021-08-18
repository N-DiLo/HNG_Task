import 'package:flutter/material.dart';
import 'package:hng_task/second_screen.dart';
import 'package:hng_task/splash_screen.dart';

void main() => runApp(HNG_Task());

class HNG_Task extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  TextEditingController _details = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HNG Task Two | First Screen',
    ), ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(height: 500,
              child: TextField(
                controller: _details,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                labelText: 'Enter Text'),
              ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SecondPage(text_details: _details.text)
                ),
                     );
                },
                    child: Text('Show Details'))
            ],
        ),
      )
    );
  }
}
