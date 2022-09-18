import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appsScreen.dart';
import 'mySelf.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My portfolio',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, MySelf.id);
            },
            child: Text('About MySelf'),
          ),
          FlatButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => AppsScreen(
                  (newTaskTitle) {
                    // setState(() {
                    //      tasks.add(Task(name: newTaskTitle));
                    // });
                    Navigator.pop(context);
                  },
                ),
              );
            },
            child: Row(
              children: [
                Container(child: Icon(Icons.add)),
                Container(
                  child: Text('MY APPS'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
