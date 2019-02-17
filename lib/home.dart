library flutter_assignment.homepage;

import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Center(child: Text('Home')),
              backgroundColor: Color.fromRGBO(33,33,33, 1.0),
            ),
            body: TabBarView(children: [
              Container(
                  child: Center(
                child: Text('Home',
                style: new TextStyle(color: Colors.grey,
                fontSize: 30.0)),
              )),
              Container(
                  child: Center(
                child: Text('Notify',
                style: new TextStyle(color: Colors.grey,
                fontSize: 30.0)),
              )),
              Container(
                  child: Center(
                child: Text('Map',
                style: new TextStyle(color: Colors.grey,
                fontSize: 30.0)),
              )),
              Container(
                  child: Center(
                child: Text('Profile',
                style: new TextStyle(color: Colors.grey,
                fontSize: 30.0)),
              )),
              Container(
                  child: Center(
                child: Text('Setup',
                style: new TextStyle(color: Colors.grey,
                fontSize: 30.0)),
              )),
            ]),
            bottomNavigationBar: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.notifications),
                  ),
                  Tab(
                    icon: Icon(Icons.map),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                  ),
                ],
                labelColor: Colors.lime,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.yellow),
          ),
        ),
      ),
    );
  }
}