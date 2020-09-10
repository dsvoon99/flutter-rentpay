import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';
import 'package:rent_pay/constants.dart';

class MyAssetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Assets',),
      body: Container(
        color: kBannerForegroundColor,
        child: Text('ffhiu'),
      ),
    );
  }
}
