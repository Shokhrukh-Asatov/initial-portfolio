import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          //FontAwesomeIcons.mars,
          size: 100.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
