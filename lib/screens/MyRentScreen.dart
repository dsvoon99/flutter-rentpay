import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';

class MyRentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Rent'),
    );
  }
}
