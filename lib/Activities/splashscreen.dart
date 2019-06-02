import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_job_assistant/Activities/Onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_job_assistant/Activities/Home.dart';



class SplashScreen extends StatefulWidget{
  @override
  State createState() => SplashScreenState();

}

class SplashScreenState extends State<SplashScreen>{
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new HomeScreen(widget.key)));
    } else {
      prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new Onboarding()));
    }
  }

  @override
  void initState(){
    super.initState();
    new Timer(new Duration(milliseconds: 10), () {
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/animatedlogo.gif'),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(bottom: 20.0),),

                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ) ;

  }


}