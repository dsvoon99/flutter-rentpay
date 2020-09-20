import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';

class MyNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(mTitle: 'My Notification'),
      body: Container(
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
                    child: Icon(Icons.mail_outline),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('September Payment updates', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),),
                        SizedBox(height: 10.0,),
                        Text('RM 380 received from Jared.'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
