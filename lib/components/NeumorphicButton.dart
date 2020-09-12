import 'package:flutter/material.dart';
import 'package:rent_pay/constants.dart';
import 'package:rent_pay/utilities/ColorUIExtension.dart';


class NeumorphicButton extends StatefulWidget {
  final Widget child;
  final Function onPressed;
  final double borderRadius;
  final Gradient gradient;
  final BoxShadow boxShadowOne;
  final BoxShadow boxShadowTwo;
  final double childPadding;

  NeumorphicButton({
    @required this.child,
    @required this.onPressed,
    this.borderRadius = 30.0,
    this.gradient,
    this.boxShadowOne,
    this.boxShadowTwo,
    this.childPadding = 10.0,
  });

  @override
  _NeumorphicButtonState createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
    widget.onPressed();
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(widget.childPadding),
        child: Listener(
          onPointerDown: _onPointerDown,
          onPointerUp: _onPointerUp,
          child: Container(
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
                borderRadius: BorderRadius.circular(widget.borderRadius),
                color: kBodyBackgroundColor,
                boxShadow: _isPressed
                    ? null
                    : [
                  widget.boxShadowOne ?? BoxShadow(
                    blurRadius: 10.0,
                    offset: Offset(-10, -10),
                    color: kBodyBackgroundColor.mix(Colors.white, 0.8),
                  ),
                  widget.boxShadowTwo ?? BoxShadow(
                    blurRadius: 10.0,
                    offset: Offset(5, 5),
                    color: kBodyBackgroundColor.mix(Colors.black, 0.1),
                  ),
                ]),
            child: widget.child,
          ),
        ));
  }
}