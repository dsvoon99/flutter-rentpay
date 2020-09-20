import 'package:flutter/material.dart';
import 'package:rent_pay/components/CustomAppBar.dart';
import 'package:rent_pay/components/NeumorphicCard.dart';
import 'package:rent_pay/constants.dart';

class SingleTenantScreen extends StatefulWidget {
  @override
  _SingleTenantScreenState createState() => _SingleTenantScreenState();
}

class _SingleTenantScreenState extends State<SingleTenantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        mTitle: "Room A1",
        mIconData: Icons.chat_bubble_outline,
        mOnTap: () {
          Navigator.pushNamed(context, kSingleChatScreen);
        },
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Tenant information'),
              SizedBox(
                height: 10.0,
              ),
              NeumorphicCard(
                mChild: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name'),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('Jared James'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Phone No.'),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('+60183144529'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text('Rental information'),
              SizedBox(
                height: 10.0,
              ),
              NeumorphicCard(
                mChild: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Rent this month'),
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
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tenancy Period'),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('Sep 2020 - Sep 2021'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text('Payment History'),
              SizedBox(
                height: 10.0,
              ),
              NeumorphicCard(
                mChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Year 2021'),
                    SizedBox(height: 30.0,),
                    ConstrainedBox(
                      constraints: BoxConstraints.expand(width: MediaQuery.of(context).size.width, height: 150),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              NeumorphicCard(
                mChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Year 2020'),
                    SizedBox(height: 30.0,),
                    ConstrainedBox(
                      constraints: BoxConstraints.expand(width: MediaQuery.of(context).size.width, height: 150),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Jan'),
                                SizedBox(height: 5.0,),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: kBannerBackgroundMixOne,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Text('Paid'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
