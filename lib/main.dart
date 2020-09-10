import 'package:flutter/material.dart';
import 'package:rent_pay/screens/HomeScreen.dart';
import 'package:rent_pay/screens/MyAssetsScreen.dart';
import 'package:rent_pay/constants.dart';
import 'package:rent_pay/screens/MyNotificationScreen.dart';
import 'package:rent_pay/screens/MyRentScreen.dart';

void main() {
  runApp(RentPay());
}

class RentPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        kMyAssetsScreen: (context) => MyAssetsScreen(),
        kMyRentScreen: (context) => MyRentScreen(),
        kMyNotificationScreen: (context) => MyNotificationScreen(),
      },
      theme: ThemeData(fontFamily: 'Lato'),
      home: Scaffold(
        body: SafeArea(child: HomeScreen()),
      ),
    );
  }
}
