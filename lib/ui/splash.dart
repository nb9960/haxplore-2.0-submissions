import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:safety/pages/switcher.dart';

class Splash extends StatefulWidget {
  static final String route = '/splash';

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pop(context);
      Navigator.pushNamed(context, Switcher.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B244C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 75.0),
              child: AvatarGlow(
                endRadius: 200.0,
                glowColor: HexColor("#534691"),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1000)),
                  child: new Image(
                      width: 251.0, //250
                      height: 191.0,
                      fit: BoxFit.fill,
                      image: new AssetImage('assets/she shield 4.jpg')),
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
            //   child: ScaleAnimatedTextKit(
            //       onTap: () {
            //         print("Tap Event");
            //       },
            //       text: [
            //         "She Shield",
            //       ],
            //       textStyle: TextStyle(
            //           fontSize: 30.0,
            //           fontFamily: "Canterbury",
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold),
            //       textAlign: TextAlign.start,
            //       alignment:
            //           AlignmentDirectional.topStart // or Alignment.topLeft
            //       ),
            // ),
          ],
        ),
      ),
    );
  }
}
