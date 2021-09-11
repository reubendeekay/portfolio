import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMobile extends StatefulWidget {
  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: height * 0.1,
            right: -width * 0.3,
            child: Opacity(
              opacity: 0.7,
              child: Image.asset('assets/1.png', height: height * 1.1),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "ZERO TO APP IN NO TIME ! ",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w200),
                    ),
                    Lottie.asset(
                      "assets/rocket.json",
                      height: height * 0.1,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "Reuben",
                  style: GoogleFonts.poppins(
                      fontSize: height * 0.04,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.1),
                ),
                Text(
                  "   Jefwa",
                  style: GoogleFonts.srisakdi(
                      fontSize: height * 0.055, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: kPrimaryColor,
                    ),
                    TyperAnimatedTextKit(
                        isRepeatingAnimation: true,
                        speed: Duration(milliseconds: 50),
                        textStyle: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200),
                        text: [
                          " Flutter Developer",
                          " Web Developer",
                          " UI/UX Enthusiast",
                          "Graphics Designer"
                        ]),
                  ],
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.03,
                        horizontalPadding: 2.0,
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
