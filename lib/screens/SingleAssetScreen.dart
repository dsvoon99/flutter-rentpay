import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';
import 'package:rent_pay/components/NeumorphicButton.dart';
import 'package:rent_pay/components/NeumorphicCard.dart';

class SingleAssetScreen extends StatefulWidget {
  @override
  _SingleAssetScreenState createState() => _SingleAssetScreenState();
}

class _SingleAssetScreenState extends State<SingleAssetScreen> {
  List hashList = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    hashList = hashList.map((e) {
      return NeumorphicCard(
        child: Row(
          children: [
            Expanded(flex: 1, child: Icon(Icons.person_outline)),
            Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jared James',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.0,
                            height: 10.0,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text('Paid'),
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 1,
              child: Icon(Icons.arrow_forward),
            )
          ],
        ),
      );
    }).toList();
    return Scaffold(
      appBar: CustomAppBar(
        title: 'A-7-10b, Cypark Village',
      ),
      body: Stack(children: [
        Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(20.0),
                children: [
                  Text("It's September time !"),
                  SizedBox(
                    height: 20.0,
                  ),
                  NeumorphicCard(
                    innerPadding: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: 100.0,
                                  ),
                                  Text("No.of tenant"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: 100.0,
                                  ),
                                  Text("Paid"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: 100.0,
                                  ),
                                  Text("Unpaid"),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text("Asset Information"),
                  SizedBox(
                    height: 20.0,
                  ),
                  NeumorphicCard(
                    innerPadding: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ),
                  Text("Rental Information"),
                  SizedBox(
                    height: 20.0,
                  ),
                  NeumorphicCard(
                    innerPadding: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Tenants Information"),
                  SizedBox(
                    height: 20.0,
                  ),
                  ...hashList,
                ],
              ),
            )
          ],
        ),

      ]),
    );
  }
}
