import 'package:flutter/material.dart';
import 'package:flutter_job_assistant/Activities/profile/quick_actions.dart';

class ProfileScreen extends StatelessWidget {

  final purpleGradient = const LinearGradient(
      colors: const <Color>[
        const Color(0xFF882DEB),
        const Color(0xFF9A4DFF)
      ],
      stops: const <double>[0.5, 0.7],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new ListView(
        padding: const EdgeInsets.all(0.0),
        children: <Widget>[
          header(),
          new Container(
            margin: EdgeInsets.only(top:10, left: 10, right: 10, bottom: 0.0),
            child: Text("Recent Job Applications", 
              style: TextStyle(color: Colors.purple, fontSize: 20),),),
          new QuickActions(),
          bottom()
          //new MainMenu(),
        ],
      ),
    );
  }

  Widget header(){
    return SafeArea(
        child:
        Container(
          //decoration: BoxDecoration(gradient: purpleGradient),
          margin: EdgeInsets.only(top: 10),
            height: 100,
            width: 100,
            child:
        Column(
          children: <Widget>[
            //Text("Profile"),
            ListTile(
              leading: new CircleAvatar(radius: 30, 
                backgroundImage: AssetImage('assets/images/ray.JPG'),),
              title: Text("Ray Okaah", style: TextStyle(fontSize: 20),),
              subtitle: Text("Port Harcourt", style: TextStyle(fontSize: 15),),
            ),
          ],
        )));
  }

  Widget bottom(){
    return new Container(
      margin: EdgeInsets.only(top: 30),
      height: 200,
      width: double.infinity,
      child: Column(
      children: <Widget>[
        new ListTile(
          leading: Icon(Icons.favorite, color: Colors.purple,),
          title: Text("Favorite"),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.green,),
        ),
        new ListTile(
          leading: Icon(Icons.notifications, color: Colors.purple,),
          title: Text("Notifications"),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.green,),
        )
      ],
    ));
  }

}