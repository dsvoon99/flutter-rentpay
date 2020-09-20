import 'package:flutter/material.dart';
import 'package:rent_pay/constants.dart';
import 'package:rent_pay/utilities/ColorUIExtension.dart';

class NeumorphicCard extends StatefulWidget {

  final Widget mChild;
  final Gradient mGradient;
  final double mInnerPadding;
  final double mBorderRadius;
  final Function mOnTap;
  final EdgeInsets mOuterMargin;
  final double mHeight;

  NeumorphicCard({this.mChild, this.mGradient, this.mInnerPadding = 30.0, this.mBorderRadius = 20.0, this.mOnTap, this.mOuterMargin, this.mHeight });

  @override
  _NeumorphicCardState createState() => _NeumorphicCardState();
}

class _NeumorphicCardState extends State<NeumorphicCard> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.mOnTap,
      child: Container(
        margin: widget.mOuterMargin ?? EdgeInsets.only(bottom: 20.0),
        padding: EdgeInsets.all(widget.mInnerPadding),
        decoration: BoxDecoration(
            gradient: widget.mGradient ?? LinearGradient(
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
        height: widget.mHeight ?? null,
        child: widget.mChild,
      ),
    );
  }
}
