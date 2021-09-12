import 'package:universal_html/html.dart' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/animations/bottomAnimation.dart';
import 'package:portfolio/animations/entranceFader.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDesktop extends StatelessWidget {
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
            top: width < 1200 ? height * 0.15 : height * 0.1,
            right: 0,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: Image.asset(
                  'assets/1.png',
                  height: width < 1200 ? height * 0.8 : height * 1.2,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "ZERO TO APP IN NO TIME ! ",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.03, fontWeight: FontWeight.w400),
                    ),
                    EntranceFader(
                      offset: Offset(0, 0),
                      delay: Duration(seconds: 2),
                      duration: Duration(milliseconds: 800),
                      child: Lottie.asset(
                        "assets/rocket.json",
                        height: height * 0.1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  "Reuben",
                  style: GoogleFonts.poppins(
                      fontSize: width < 1200 ? height * 0.05 : height * 0.06,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 4.0),
                ),
                Text(
                  "   Jefwa",
                  style: GoogleFonts.srisakdi(
                      fontSize: width < 1200 ? height * 0.085 : height * 0.095,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 5.0),
                ),
                EntranceFader(
                  offset: Offset(-10, 0),
                  delay: Duration(seconds: 1),
                  duration: Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: kPrimaryColor,
                      ),
                      TyperAnimatedTextKit(
                          isRepeatingAnimation: true,
                          pause: Duration(seconds: 5),
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.montserrat(
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.w100),
                          text: [
                            "Dream big! I will build it for you. ",
                            " Flutter Developer",
                            " Web Developer",
                            " UI/UX Enthusiast",
                            "Graphics Designer"
                          ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      WidgetAnimator(
                        child: SocialMediaIconBtn(
                          icon: kSocialIcons[i],
                          socialLink: kSocialLinks[i],
                          height: height * 0.035,
                          horizontalPadding: width * 0.005,
                        ),
                      )
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                EntranceFader(
                  offset: Offset(0, -20),
                  delay: Duration(seconds: 3),
                  duration: Duration(seconds: 1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: MaterialButton(
                      hoverColor: kPrimaryColor.withAlpha(150),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      onPressed: () {
                        html.window.open(
                            'https://drive.google.com/uc?export=view&id=1yItOQ9twBqVGryjyU-VJt97UYYuC3B6o',
                            "pdf");
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 50),
                        child: Text(
                          "View Resume",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
