import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hng_task/main.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}
class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
    startTimer() async{
    var duration = Duration(seconds: 5);
      return Timer(duration, route);
    }
      route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)
        => Firstpage()));
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('images/i4g.png'),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Text('Ingressive 4 Good',
                style: TextStyle(fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 10),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            CircularProgressIndicator(
              color: Colors.blue,
              strokeWidth: 2,
            )
          ],
        ),
      ),

    );
      }
  }

