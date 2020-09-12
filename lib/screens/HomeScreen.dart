import 'package:flutter/material.dart';
import 'package:rent_pay/constants.dart';
import 'package:rent_pay/components/NeumorphicButton.dart';
import 'package:rent_pay/screens/views/Home/BackgroundStackOne.dart';
import 'package:rent_pay/screens/views/Home/BackgroundStackThree.dart';
import 'package:rent_pay/screens/views/Home/BackgroundStackTwo.dart';
import 'package:rent_pay/utilities/ColorUIExtension.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Stack(
                  children: [
                    BackgroundStackOne(),
                    BackgroundStackTwo(),
                    BackgroundStackThree(),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

