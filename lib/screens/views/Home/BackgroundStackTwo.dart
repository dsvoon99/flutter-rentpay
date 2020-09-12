import 'package:flutter/material.dart';
import 'package:rent_pay/constants.dart';


class BackgroundStackTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RentPayClipper(),
      child: Container(
        decoration: BoxDecoration(
          color: kBodyBackgroundColor,
        ),
      ),
    );
  }
}

class RentPayClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.moveTo(0, size.height * 0.7);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width * 0.65 + 70, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.65 + 10, size.height * 0.4, size.width * 0.65 + 10, size.height * 0.4 + 70);
    path.lineTo(size.width * 0.65 + 10, size.height * 0.65 - 50);
    path.quadraticBezierTo(size.width * 0.65 + 10, size.height * 0.65 + 15, size.width * 0.5, size.height * 0.65 + 15);
    path.lineTo(60, size.height * 0.65 + 15);
    path.quadraticBezierTo(15, size.height * 0.65 + 15, 0, size.height * 0.7);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}