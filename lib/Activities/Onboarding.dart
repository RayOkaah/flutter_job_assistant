import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:flutter_job_assistant/Activities/Home.dart';


class Onboarding extends StatefulWidget{
  @override
  State createState() => SplashScreenState();

}

class SplashScreenState extends State<Onboarding>{

  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('assets/images/jsearch.png'),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            'Get access to the latest job on Flutter',
          ),
        ),
        title: Text(
          'Job Acess',),
        textStyle: TextStyle( color: Colors.white,fontSize: 10.0),
        mainImage: Image.asset(
          'assets/images/jobsearch.png',
          height: 400.0,
          width: 400.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconImageAssetPath: 'assets/images/realon.png',
      body: Text(
        'Get real time job updates you on the Go',
      ),
      title: Text('Real time Job updates'),
      mainImage: Image.asset(
        'assets/images/updates.png',
        height: 400.0,
        width: 400.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle( color: Colors.white,fontSize: 10.0),
    ),
  ];

  @override
  void initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            Navigator.of(context).pushReplacement(
                new MaterialPageRoute(builder: (context) => HomeScreen(widget.key)));
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ),
    ) ;
  }

}