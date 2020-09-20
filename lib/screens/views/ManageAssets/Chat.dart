import 'package:flutter/material.dart';
import 'package:rent_pay/components/NeumorphicCard.dart';
import 'package:rent_pay/constants.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade200, width: 1.0),
                )
            ),
            padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 20.0),
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
          )
        ],
      ),
    );
  }
}
