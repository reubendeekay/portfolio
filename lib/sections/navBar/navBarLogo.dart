import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';

class NavBarLogo extends StatelessWidget {
  final double height;
  NavBarLogo({this.height});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0, 20.0, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedTextKit(animatedTexts: [
            ColorizeAnimatedText(
              "R",
              colors: [
                kPrimaryColor,
                kPrimaryColor,
                Colors.white,
              ],
              speed: Duration(seconds: 7),
              textStyle: GoogleFonts.spartan(
                  fontSize: 40, fontWeight: FontWeight.w900),
            )
          ]),
          AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                ".",
                speed: Duration(seconds: 10),
                colors: [
                  Colors.white,
                  Colors.white,
                  kPrimaryColor,
                ],
                textStyle: GoogleFonts.notoSans(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
