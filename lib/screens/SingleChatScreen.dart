import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';
import 'package:rent_pay/constants.dart';

class SingleChatScreen extends StatefulWidget {
  @override
  _SingleChatScreenState createState() => _SingleChatScreenState();
}

class _SingleChatScreenState extends State<SingleChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        mTitle: 'Room A1 - Jared James',
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        padding: EdgeInsets.all(10.0),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.6
                        ),
                        child: Text('Hello World How are you'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        padding: EdgeInsets.all(10.0),
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.6
                        ),
                        child: Text('Hello World How are you', style: TextStyle(
                          color: Colors.white,
                        ),),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: kBannerBackgroundMixOne,
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: kBodyBackgroundColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: GestureDetector(
                        child: Icon(Icons.send),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
