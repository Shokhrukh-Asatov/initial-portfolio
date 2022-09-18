import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'coin_data.dart';
import 'dart:io' show Platform;
import 'package:http/http.dart' as http;
import 'dart:convert';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedValue = 'USD';

  DropdownButton<String> androidDropDownButton() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (int i = 0; i < currenciesList.length; i++) {
      String currency = currenciesList[i];
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropDownItems.add(newItem);
    }

    return DropdownButton<String>(
      value: selectedValue,
      items: dropDownItems,
      onChanged: (value) {
        setState(
          () {
            selectedValue = value!;
          },
        );
      },
    );
  }

  CupertinoPicker iOSCupertinoItem() {
    List<Text> cupertinoItem = [];
    for (String currency in currenciesList) {
      cupertinoItem.add(Text(currency));
    }

    return CupertinoPicker(
      itemExtent: 28.0,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
      },
      children: cupertinoItem,
    );
  }

  int resultBTC = 0;
  int resultETH = 0;
  int resultLTC = 0;
  void getBTC() async {
    http.Response response = await http.get(
      Uri.parse(
          'https://rest.coinapi.io/v1/exchangerate/BTC/$selectedValue?apikey=F77EF4A1-4C72-4409-8CA8-44070B607085'),
    );
    if (response.statusCode == 200) {
      double BTCto = jsonDecode(response.body)['rate'];
      resultBTC = BTCto.round();
    } else {
      print(response.statusCode);
    }
  }

  void getETH() async {
    http.Response response = await http.get(
      Uri.parse(
          'https://rest.coinapi.io/v1/exchangerate/ETH/$selectedValue?apikey=F77EF4A1-4C72-4409-8CA8-44070B607085'),
    );
    if (response.statusCode == 200) {
      double ETHto = jsonDecode(response.body)['rate'];
      resultETH = ETHto.round();
    } else {
      print(response.statusCode);
    }
  }

  void getLTC() async {
    http.Response response = await http.get(
      Uri.parse(
          'https://rest.coinapi.io/v1/exchangerate/LTC/$selectedValue?apikey=F77EF4A1-4C72-4409-8CA8-44070B607085'),
    );
    if (response.statusCode == 200) {
      double LTCto = jsonDecode(response.body)['rate'];
      resultLTC = LTCto.round();
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    getBTC();
    getETH();
    getLTC();
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                  child: Text(
                    '1 BTC = $resultBTC $selectedValue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                  child: Text(
                    '1 ETH = $resultETH $selectedValue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                  child: Text(
                    '1 LTC = $resultLTC $selectedValue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child:
                Platform.isIOS ? iOSCupertinoItem() : androidDropDownButton(),
          ),
        ],
      ),
    );
  }
}
