import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

// *******************************************
/* */
// *******************************************

class FirstPanel extends StatefulWidget {
  @override
  _FirstPanelState createState() => _FirstPanelState();
}

class _FirstPanelState extends State<FirstPanel> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: double.infinity,
        decoration: new BoxDecoration(color: Color(0xFF4E455E)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2.0, color: Colors.white),
                        borderRadius: BorderRadius.circular(20.0)
                        // add image if you want to
                        ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  new Text(
                    'Hi , Veronica',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.0),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: new Text(
                  'Your total balance is : ',
                  style: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w200),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: new Text(
                  '\$162',
                  style: TextStyle(
                      fontSize: 40.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // crypto widget
                  Container(
                    width: 150.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0XFF4821F9)),
                    child: Stack(
                      children: <Widget>[
                        // the design on the back of each card

                        Positioned(
                            top: 0.0,
                            child: ClipPath(
                              clipper: WaveClipperTwo(),
                              child: Container(
                                height: 10.0,
                                color: Colors.white30,
                              ),
                            )),
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                          child: Container(
                            width: 150.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                        ),
                        // original text
                        Center(
                          child: new Text(
                            '\$22.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 30.0),
                          ),
                        ),
                        // the text behind the original text
                        Positioned(
                          top: 30.0,
                          left: -50,
                          child: new Text(
                            '\$22.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white10,
                                fontSize: 90.0),
                          ),
                        ),
                        Positioned(
                          bottom: 20.0,
                          left: 40.0,
                          child: new Text(
                            'Crypto',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  // currency widget
                  Container(
                    width: 150.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0XFFFA3098)),
                                            child: Stack(
                      children: <Widget>[
                        // the design on the back of each card

                        Positioned(
                            top: 0.0,
                            child: ClipPath(
                              clipper: WaveClipperTwo(),
                              child: Container(
                                height: 10.0,
                                color: Colors.white30,
                              ),
                            )),
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                          child: Container(
                            width: 150.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                        ),
                        // original text
                        Center(
                          child: new Text(
                            '\$135.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 30.0),
                          ),
                        ),
                        // the text behind the original text
                        Positioned(
                          top: 30.0,
                          left: -50,
                          child: new Text(
                            '\$135.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white10,
                                fontSize: 90.0),
                          ),
                        ),
                        Positioned(
                          bottom: 20.0,
                          left: 40.0,
                          child: new Text(
                            'Dollars',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

// class CircleClipper extends CustomClipper<ClipOval>{
//   @override
//   ClipOval getClip(Size size) {

//     return null;
//   }

//   @override
//   bool shouldReclip(CustomClipper<ClipOval> oldClipper) {
//     return true;
//   }
// }
