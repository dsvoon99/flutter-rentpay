import 'package:flutter/material.dart';
import 'package:rent_pay/constants.dart';
import 'package:rent_pay/utilities/ColorUIExtension.dart';

class NeumorphicCard extends StatefulWidget {

  final Widget child;
  final Gradient gradient;
  final double innerPadding;
  final double borderRadius;
  final Function onTap;
  final EdgeInsets outerMargin;
  final double height;

  NeumorphicCard({this.child, this.gradient, this.innerPadding = 30.0, this.borderRadius = 20.0, this.onTap, this.outerMargin, this.height });

  @override
  _NeumorphicCardState createState() => _NeumorphicCardState();
}

class _NeumorphicCardState extends State<NeumorphicCard> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: widget.outerMargin ?? EdgeInsets.only(bottom: 20.0),
        padding: EdgeInsets.all(widget.innerPadding),
        decoration: BoxDecoration(
            gradient: widget.gradient ?? LinearGradient(
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
            borderRadius: BorderRadius.circular(20.0),
            color: kBodyBackgroundColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                offset: Offset(-10, -10),
                color: kBodyBackgroundColor.mix(Colors.white, 0.8),
              ),
              BoxShadow(
                blurRadius: 10.0,
                offset: Offset(5, 5),
                color: kBodyBackgroundColor.mix(Colors.black, 0.1),
              ),
            ]),
        width: double.infinity,
        height: widget.height ?? null,
        child: widget.child,
      ),
    );
  }
}
