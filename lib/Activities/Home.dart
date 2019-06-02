import 'package:flutter/material.dart';
import 'package:flutter_job_assistant/Activities/Conversation.dart';
import 'package:flutter_job_assistant/Activities/profile/ProfileScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen(Key key) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("Flutter Job Assistant"),),
      body: new DefaultTabController(length: 2,
          child:Scaffold(
            body: TabBarView(
              children: [
                new ProfileScreen(),
                new ConversationScreen(),
              ],),
            appBar: new AppBar(
              bottom: TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(child: Container(child:Text("My Profile"), width: 150,)),
                    Tab(child: Container(child: Text('Get Job'), width: 150,)),
                  ]
              ),
              actions: <Widget>[
                PopupMenuButton<String>(
                  icon: Icon(Icons.more_vert),
                  onSelected: null,
                  itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                    const PopupMenuItem<String>(
                        value: 'refresh',
                        child: Text('Refresh',
                            style: TextStyle(color: Colors.deepOrange))),
                    const PopupMenuItem<String>(
                        value: 'exitApp',
                        child: Text(
                          'Exit App',
                          style: TextStyle(color: Colors.deepOrange),
                        )),
                  ],
                ),
              ],
            ),
            //drawer: Drawer(child: AppDrawer(widget.firebaseUser)),
          )
      ),
    );
  }
}


