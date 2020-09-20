import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:rent_pay/components/NeumorphicCard.dart';

class DashBoard extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: [
        NeumorphicCard(
          mChild: Column(
            children: [
              Text('September 2020'),
              SizedBox(
                height: 20.0,
              ),
              CircularPercentIndicator(
                radius: 150.0,
                lineWidth: 10.0,
                percent: 1.0,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text("6/8", style: TextStyle(
                      fontSize: 30.0,
                    ),),
                    SizedBox(height: 10.0,),
                    Text('Paid Tenant')
                  ],
                ),
                progressColor: Colors.green,
              )
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: NeumorphicCard(
                mChild: Column(
                  children: [
                    Text('Income so far'),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('RM 2800', style: TextStyle(
                        fontSize: 20.0
                    ),)
                  ],
                ),
                mOuterMargin: EdgeInsets.only(right: 10.0),
              ),
            ),
            Expanded(
              child: NeumorphicCard(
                mChild: Column(
                  children: [
                    Text('No. of Assets'),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('3', style: TextStyle(
                      fontSize: 20.0
                    ),)
                  ],
                ),
                mOuterMargin: EdgeInsets.only(left: 10.0),
              ),
            ),
          ],
        ),
        SizedBox(height: 30.0,),
        Text('Unpaid Tenant (2)'),
        SizedBox(height: 20.0,),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: EdgeInsets.only(bottom: 10.0),
          padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(Icons.bubble_chart),
              ),
              SizedBox(width: 15.0,),
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('A-7-10b, Cypark Village', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),),
                    SizedBox(height: 10.0,),
                    Text('Jared James'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: EdgeInsets.only(bottom: 10.0),
          padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(Icons.bubble_chart),
              ),
              SizedBox(width: 15.0,),
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('A-7-10b, Cypark Village', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),),
                    SizedBox(height: 10.0,),
                    Text('Jared James'),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0,),
        Text('Action'),
        SizedBox(height: 20.0,),
        Row(
          children: [
            Expanded(
              child: NeumorphicCard(
                mChild: Column(
                  children: [
                    Icon(Icons.add),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('Add utilities bill',)
                  ],
                ),
                mOuterMargin: EdgeInsets.only(right: 10.0),
              ),
            ),
            Expanded(
              child: NeumorphicCard(
                mChild: Column(
                  children: [
                    Icon(Icons.list),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('Check history')
                  ],
                ),
                mOuterMargin: EdgeInsets.only(left: 10.0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
