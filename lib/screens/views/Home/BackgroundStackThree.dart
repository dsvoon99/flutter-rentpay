import 'package:flutter/material.dart';
import 'package:rent_pay/constants.dart';
import 'package:rent_pay/components/NeumorphicButton.dart';
import 'package:rent_pay/utilities/ColorUIExtension.dart';

final Gradient kHomePageButtonGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      kBodyBackgroundColor.mix(Colors.black, .1),
      kBodyBackgroundColor,
      kBodyBackgroundColor,
      kBodyBackgroundColor.mix(Colors.white, .5),
    ],
    stops: [
      0.0,
      .1,
      .5,
      1.0,
    ]);

final LinearGradient kHomePageNotificationButtonGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      kBodyBackgroundColor.mix(Colors.black, .1),
      kBodyBackgroundColor,
      kBodyBackgroundColor,
      kBodyBackgroundColor.mix(Colors.white, .5),
    ],
    stops: [
      0.0,
      .2,
      .5,
      1.0,
    ]);

class HomePageButtonElement extends StatelessWidget {
  final String title;
  final IconData icon;

  HomePageButtonElement({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              child: Icon(
                icon,
                color: kBlackColor,
              ),
            )),
        Expanded(
          flex: 4,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Container(
              child: Icon(
                Icons.arrow_forward,
                color: kBlackColor,
              ),
            )),
      ],
    );
  }
}

class BackgroundStackThree extends StatefulWidget {
  @override
  _BackgroundStackThreeState createState() => _BackgroundStackThreeState();
}

class _BackgroundStackThreeState extends State<BackgroundStackThree> with TickerProviderStateMixin {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        NeumorphicButton(
                          gradient:
                          kHomePageNotificationButtonGradient,
                          child: Container(
                            child: Icon(
                              Icons.person,
                              color: kBlackColor,
                            ),
                            padding: EdgeInsets.all(30.0),
                          ),
                          onPressed: () {

                          },
                        ),
                        NeumorphicButton(
                          gradient:
                          kHomePageNotificationButtonGradient,
                          child: Container(
                            child: Icon(
                              Icons.notifications,
                              color: kBlackColor,
                            ),
                            padding: EdgeInsets.all(30.0),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, kMyNotificationScreen);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: NeumorphicButton(
                          child: HomePageButtonElement(
                            title: 'Manage My Asset',
                            icon: Icons.home,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, kMyAssetsScreen);
                          },
                          gradient: kHomePageButtonGradient,
                        ),
                      ),
                      Expanded(
                        child: NeumorphicButton(
                          child: HomePageButtonElement(
                              title: 'Settle My Rent',
                              icon: Icons.attach_money),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, kMyRentScreen);
                          },
                          gradient: kHomePageButtonGradient,
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
