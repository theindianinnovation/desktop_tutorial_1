import 'package:desktop_tutorial_1/screens/first_screen.dart';
import 'package:desktop_tutorial_1/screens/second_screen.dart';
import 'package:desktop_tutorial_1/screens/third_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
            child: Drawer(
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                      child:  FlutterLogo()
                  ),
                  ListTile(
                    title: Text('Item 1'),
                    leading: Icon(Icons.settings_applications),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text('Item 2'),
                    leading: Icon(Icons.contacts),
                    onTap: () {

                    },
                  ),
                ],
              ),
            )// Populate the Drawer in the next step.
        ),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.pedal_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen()
          ],
        ),
      ),
    );
  }
}
