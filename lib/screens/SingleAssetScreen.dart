import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';
import 'package:rent_pay/components/NeumorphicButton.dart';
import 'package:rent_pay/components/NeumorphicCard.dart';
import 'package:rent_pay/components/NeumorphicFloatingActionButton.dart';
import 'package:rent_pay/constants.dart';

class SingleAssetScreen extends StatefulWidget {
  @override
  _SingleAssetScreenState createState() => _SingleAssetScreenState();
}

class _SingleAssetScreenState extends State<SingleAssetScreen> {
  List hashList = [1, 2,];

  @override
  Widget build(BuildContext context) {
    hashList = hashList.map((e) {
      return NeumorphicCard(
        mInnerPadding: 20.0,
        mChild: Row(
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
                      Text('Room A1',),
                      SizedBox(height: 5.0,),
                      Text(
                        'Jared James',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
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
              child: Column(
                children: [
                  GestureDetector(child: Icon(Icons.info_outline, color: Colors.grey, size: 30.0,), onTap: (){
                    Navigator.pushNamed(context, kSingleTenantScreen);
                  },),
                ],
              ),
            )
          ],
        ),
      );
    }).toList();
    return Scaffold(
      appBar: CustomAppBar(
        mTitle: 'A-7-10b, Cypark Village',
        mIconData: Icons.edit,
        mOnTap: () {
          Navigator.pushNamed(context, kUpdateAssetScreen);
        },
      ),
      body: Column(
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
                  mInnerPadding: 20.0,
                  mChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  child: Text("6", style: TextStyle(
                                    fontSize: 30.0
                                  ),),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text("No.of tenant"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  child: Text("4", style: TextStyle(
                                      fontSize: 30.0
                                  ),),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                    Text("Paid"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  child: Text("2", style: TextStyle(
                                      fontSize: 30.0
                                  ),),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10.0,
                                      height: 10.0,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Colors.orangeAccent,
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text("Unpaid"),
                                  ],
                                ),
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
                  mInnerPadding: 20.0,
                  mChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Location'),
                      SizedBox(height: 5.0,),
                      Text('A-7-10b, Jalan Cypark, Cypark Village, 08000 Sungai Petani Kedah.'),
                    ],
                  ),
                ),
                Text("Rental Information"),
                SizedBox(
                  height: 20.0,
                ),
                NeumorphicCard(
                  mInnerPadding: 20.0,
                  mChild: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Max no.of tenants'),
                            SizedBox(height: 5.0,),
                            Text('5'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rent per month (RM)'),
                            SizedBox(height: 5.0,),
                            Text('380'),
                          ],
                        ),
                      ),
                    ],
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
    );
  }
}
