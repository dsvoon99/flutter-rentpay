import 'package:flutter/material.dart';
import 'package:rent_pay/components/NeumorphicCard.dart';
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
          child: Stack(
            children: [
              ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                children: [
                  NeumorphicCard(
                    height: 110,
                    onTap: () {
                      Navigator.pushNamed(context, kSingleAssetScreen);
                    },
                    child: Row(
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
              Positioned(
                bottom: 20,
                right: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, kAddNewAssetScreen);
                  },
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
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
