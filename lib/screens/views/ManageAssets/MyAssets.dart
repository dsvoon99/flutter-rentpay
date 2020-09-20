import 'package:flutter/material.dart';
import 'package:rent_pay/components/NeumorphicCard.dart';
import 'package:rent_pay/components/NeumorphicFloatingActionButton.dart';
import 'package:rent_pay/constants.dart';
import 'package:rent_pay/utilities/ColorUIExtension.dart';

class MyAssets extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<MyAssets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            children: [
              NeumorphicCard(
                mHeight: 110,
                mOnTap: () {
                  Navigator.pushNamed(context, kSingleAssetScreen);
                },
                mChild: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.home),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'A-7-10b, Cypark Village',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Paid Tenants: ',
                                  style: DefaultTextStyle.of(context).style,
                                  children: [TextSpan(text: '10/10')]),
                            ), // Using Rich Text
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
