import 'package:flutter/material.dart';
import 'constants.dart';

class Bottombutton extends StatelessWidget {
  Bottombutton({required this.onTap, required this.bottomTitle});
  final Function() onTap;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            bottomTitle,
            style: kBottomLargeText,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
