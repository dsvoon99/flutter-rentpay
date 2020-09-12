import 'package:flutter/material.dart';
import 'package:rent_pay/constants.dart';

class BackgroundStackOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                kBannerBackgroundMixTwo,
                kBannerBackgroundMixOne,
              ])),
    );
  }
}
