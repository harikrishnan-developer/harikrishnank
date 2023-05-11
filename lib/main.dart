import 'package:flutter/material.dart';

import 'hari/homepage.dart';
import 'hari/loginpage.dart';
import 'hari/registerpage.dart';
import 'hari/splash.dart';
import 'task/taskpage.dart';
void main()
{
  runApp(MyApp());

}
 class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash(),


    );
  }
}
