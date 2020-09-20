import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';
import 'package:rent_pay/components/NeumorphicCard.dart';

class MyRentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(mTitle: 'My Rent'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Choose a rental properties.'),
            SizedBox(height: 30.0,),
            Expanded(
              child: ListView(
                children: [
                  NeumorphicCard(
                    mChild: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(Icons.bubble_chart, size: 30.0,),
                          ),
                          SizedBox(width: 20.0,),
                          Expanded(
                            flex: 6,
                            child: Text('A-7-10b, Cypark Village', style: TextStyle(
                              fontSize: 15.0,
                            ),),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(Icons.chevron_right),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
