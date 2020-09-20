import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';
import 'package:rent_pay/components/NeumorphicButton.dart';
import 'package:rent_pay/components/NeumorphicCard.dart';

class AddNewAssetScreen extends StatefulWidget {
  @override
  _AddNewAssetScreenState createState() => _AddNewAssetScreenState();
}

class _AddNewAssetScreenState extends State<AddNewAssetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        mTitle: 'New Asset',
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
                  SizedBox(height: 20.0,),
                  NeumorphicCard(
                    mChild: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            autofocus: true,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: "House No.",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Street Name",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: "Address",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: "Poscode",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "State",
                            ),
                          ),
                        ),  
                      ],
                    ),
                  ),
                  Text(
                    'Rental information',
                  ),
                  SizedBox(height: 20.0,),
                  NeumorphicCard(
                    mChild: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: "Maximum No. of Tenants",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Monthly rent (RM)",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  NeumorphicCard(
                    mInnerPadding: 30.0,
                    mChild: Center(
                      child: Text('Create'),
                    ),
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
