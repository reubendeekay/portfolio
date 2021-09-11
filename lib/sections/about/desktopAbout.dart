import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/sections/navBar/navBarLogo.dart';
import 'package:portfolio/widget/aboutMeText.dart';
import 'package:portfolio/widget/communityIconBtn.dart';
import 'package:portfolio/widget/toolsTech.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [50.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.1, vertical: height * 0.02),
      height: height,
      // color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.5,
                width: height * 0.6,
                child: Lottie.asset(
                  'assets/about.json',
                  animate: true,
                ),
              ),
              SizedBox(
                width: width * 0.1,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(
                      "\nAbout Me",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.075,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    AboutMeText(
                      fontSize: width <= 1100 ? 14 : 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.055,
          ),
          Row(
            children: [
              for (int i = 0; i < kCommunityLogo.length; i++)
                CommunityIconBtn(
                  icon: kCommunityLogo[i],
                  link: kCommunityLinks[i],
                  height: _communityLogoHeight[i],
                ),
              Expanded(
                child: Container(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
