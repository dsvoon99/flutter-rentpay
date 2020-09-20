import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';
import 'package:rent_pay/components/NeumorphicCard.dart';
import 'package:rent_pay/constants.dart';
import 'package:rent_pay/utilities/ColorUIExtension.dart';

class MyAccountScreen extends StatefulWidget {
  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        mTitle: 'My Account',
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
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
                      ],
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  child: Center(
                    child: Text('fef'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0,),
            Text('Personal Info'),
            SizedBox(height: 20.0,),
            NeumorphicCard(
              mChild: Text('f'),
            ),
            SizedBox(height: 30.0,),
            Text('Connected Payment Method'),
            SizedBox(height: 20.0,),
            NeumorphicCard(
              mChild: Text('f'),
            ),
          ],
        ),
      ),
    );
  }
}
