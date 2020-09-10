import 'package:flutter/material.dart';
import 'package:rent_pay/constants.dart';

extension ColorUIExtension on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}

final Gradient kHomePageButtonGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      kBannerForegroundColor.mix(Colors.black, .1),
      kBannerForegroundColor,
      kBannerForegroundColor,
      kBannerForegroundColor.mix(Colors.white, .5),
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
      kBannerForegroundColor.mix(Colors.black, .1),
      kBannerForegroundColor,
      kBannerForegroundColor,
      kBannerForegroundColor.mix(Colors.white, .5),
    ],
    stops: [
      0.0,
      .2,
      .5,
      1.0,
    ]);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: kBannerSecondBackgroundColor,
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xFF07689f),
                                kBannerBackgroundColor,
                              ])),
                    ),
                    ClipPath(
                      clipper: RentPayClipper(),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kBannerForegroundColor,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: NeumorphicButton(
                                        gradient:
                                            kHomePageNotificationButtonGradient,
                                        child: Container(
                                          child: Icon(
                                            Icons.menu,
                                            color: kBlackColor,
                                          ),
                                          padding: EdgeInsets.all(30.0),
                                        ),
                                        onPressed: () {

                                        },
                                      ),
                                    )
                                  ],
                                )
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
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class NeumorphicButton extends StatefulWidget {
  final Widget child;
  final Function onPressed;
  final double borderRadius;
  final Gradient gradient;

  NeumorphicButton({
    @required this.child,
    @required this.onPressed,
    this.borderRadius = 30.0,
    this.gradient,
  });

  @override
  _NeumorphicButtonState createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
    widget.onPressed();
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Listener(
          onPointerDown: _onPointerDown,
          onPointerUp: _onPointerUp,
          child: Container(
            decoration: BoxDecoration(
                gradient: widget.gradient,
                borderRadius: BorderRadius.circular(widget.borderRadius),
                color: kBannerForegroundColor,
                boxShadow: _isPressed
                    ? null
                    : [
                        BoxShadow(
                          blurRadius: 10.0,
                          offset: Offset(-10, -10),
                          color: kBannerForegroundColor.mix(Colors.white, 0.8),
                        ),
                        BoxShadow(
                          blurRadius: 10.0,
                          offset: Offset(5, 5),
                          color: kBannerForegroundColor.mix(Colors.black, 0.1),
                        ),
                      ]),
            child: widget.child,
          ),
        ));
  }
}

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

class RentPayClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.moveTo(0, size.height * 0.25);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.35);
    path.quadraticBezierTo(
        size.width * 0.55, size.height * 0.75, 0, size.height * 0.65);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class RentPaySecondClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.35, size.height * 0.65, size.width, size.height * 0.65);
    path.quadraticBezierTo(size.width * 0.35, size.height * 0.65, 0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
