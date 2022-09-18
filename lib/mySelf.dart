import 'package:flutter/material.dart';

class MySelf extends StatefulWidget {
  static String id = 'myself';

  @override
  State<MySelf> createState() => _MySelfState();
}

class _MySelfState extends State<MySelf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/shohruh.jpg'),
            ),
            Text(
              'Shokhrukh Asatov ',
              style: TextStyle(
                fontFamily: 'Great Vibes',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 30.0,
                  color: Colors.teal[100]),
            ),
            SizedBox(
              height: 40.0,
              width: 200.0,
              child: Divider(color: Colors.teal[100]),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    size: 25.0,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '+998(93) 522-00-06',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    size: 25.0,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Shohruh.asatov@mail.ru',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.teal,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
