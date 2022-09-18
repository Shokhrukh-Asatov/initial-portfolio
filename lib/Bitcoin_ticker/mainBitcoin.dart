import 'package:flutter/material.dart';
import 'price_screen.dart';

class BitcoinTicker extends StatelessWidget {
  static String id = 'bitcoin_ticker';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );
  }
}
