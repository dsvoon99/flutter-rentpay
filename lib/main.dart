import 'package:flutter/material.dart';
import 'package:rent_pay/screens/AddNewAssetScreen.dart';
import 'package:rent_pay/screens/HomeScreen.dart';
import 'package:rent_pay/screens/ManageAssetsScreen.dart';
import 'package:rent_pay/constants.dart';
import 'package:rent_pay/screens/MyNotificationScreen.dart';
import 'package:rent_pay/screens/MyRentScreen.dart';
import 'package:rent_pay/screens/SingleAssetScreen.dart';

void main() {
  runApp(RentPay());
}

class RentPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        kMyAssetsScreen: (context) => ManageAssetsScreen(),
        kMyRentScreen: (context) => MyRentScreen(),
        kMyNotificationScreen: (context) => MyNotificationScreen(),
        kSingleAssetScreen: (context) => SingleAssetScreen(),
        kAddNewAssetScreen: (context) => AddNewAssetScreen(),
      },
      theme: ThemeData(
        fontFamily: 'Lato',
        scaffoldBackgroundColor: kBodyBackgroundColor,
        iconTheme: IconThemeData(
          color: kBlackColor,
        ),
      ),
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
