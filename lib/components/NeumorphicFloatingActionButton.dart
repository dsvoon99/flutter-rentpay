import 'package:flutter/material.dart';
import 'package:rent_pay/constants.dart';
import 'package:rent_pay/utilities/ColorUIExtension.dart';

class NeumorphicFloatingActionButton extends StatelessWidget {

  final Function onTap;
  final IconData icon;

  NeumorphicFloatingActionButton({ this.onTap, this.icon });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  kBodyBackgroundColor.mix(Colors.black, .1),
                  kBodyBackgroundColor,
                  kBodyBackgroundColor,
                  kBodyBackgroundColor.mix(Colors.white, .5),
                ],
                stops: [
                  0.0,
                  .1,
                  .5,
                  1.0,
                ]),
            borderRadius: BorderRadius.circular(50.0),
            color: kBodyBackgroundColor,
            boxShadow: [BoxShadow(
              blurRadius: 10.0,
              offset: Offset(-10, -10),
              color: kBodyBackgroundColor.mix(Colors.white, 0.8),
            ),BoxShadow(
              blurRadius: 10.0,
              offset: Offset(5, 5),
              color: kBodyBackgroundColor.mix(Colors.black, 0.1),
            ),
            ]
        ),
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}
