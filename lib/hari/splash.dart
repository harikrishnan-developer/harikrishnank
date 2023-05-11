import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internship/hari/loginpage.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 6), (timer) {


      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Image.network('https://img.freepik.com/free-vector/businessman-holding-pencil-big-complete-checklist-with-tick-marks_1150-35019.jpg?w=1060&t=st=1683616521~exp=1683617121~hmac=b00cb32690cfa808cba3edb3050f3f668fe6261d300a459bdeb31946b5873d8a')
          ,
          CircularProgressIndicator()

        ],
      ),


    );
  }
}
