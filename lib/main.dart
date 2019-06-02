import 'package:flutter/material.dart';
import 'package:flutter_job_assistant/Activities/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Job Assistant',
      theme: ThemeData(primaryColor: Colors.deepPurple,accentColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }



}
