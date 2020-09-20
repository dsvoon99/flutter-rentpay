import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';
import 'package:rent_pay/components/NeumorphicCard.dart';

class UpdateAssetScreen extends StatefulWidget {
  @override
  _UpdateAssetScreenState createState() => _UpdateAssetScreenState();
}

class _UpdateAssetScreenState extends State<UpdateAssetScreen> {

  void showRemoveTenantDialog(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        content: Text('Are you sure you want to remove Tenant?'),
        actions: [
          FlatButton(
            child: Text('Yes, remove.'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text('No, keep this'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        mTitle: 'A-7-10b, Cypark Village',
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(20.0),
                children: [
                  Text(
                    'New Asset Information',
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  NeumorphicCard(
                    mChild: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                labelText: "House No.",
                                labelStyle: TextStyle(
                                  fontSize: 15.0,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: "Street Name",
                                labelStyle: TextStyle(
                                  fontSize: 15.0,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                labelText: "Address",
                                labelStyle: TextStyle(
                                  fontSize: 15.0,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                labelText: "Poscode",
                                labelStyle: TextStyle(
                                  fontSize: 15.0,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: "State",
                                labelStyle: TextStyle(
                                  fontSize: 15.0,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Rental information',
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  NeumorphicCard(
                    mChild: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                labelText: "Maximum No. of Tenants",
                                labelStyle: TextStyle(
                                  fontSize: 15.0,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: "Monthly rent (RM)",
                                labelStyle: TextStyle(
                                  fontSize: 15.0,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Tenants Information'),
                  SizedBox(
                    height: 30.0,
                  ),
                  NeumorphicCard(
                      mChild: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.person),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                          flex: 6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Room A1'),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Jared James'),
                            ],
                          )),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          child: Icon(Icons.remove_circle),
                          onLongPress: () {
                            showRemoveTenantDialog(context);
                          },
                        ),
                      )
                    ],
                  )),
                  SizedBox(
                    height: 20.0,
                  ),
                  NeumorphicCard(
                    mChild: Center(child: Text('Update')),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
