import 'package:flutter/material.dart';
import 'package:portfolio/animations/bottomAnimation.dart';
import 'package:portfolio/widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';

class ProjectsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          Text(
            "\Projects",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "These are a few examples of my previous work\n\n",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300, fontSize: height * 0.025),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.2,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.25 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.28 : height * 0.1,
                    backImage: kProjectsBanner[index],
                    projectIcon: kProjectsIcons[index],
                    projectTitle: kProjectsTitles[index],
                    projectDescription: kProjectsDescriptions[index],
                    projectLink: kProjectsLinks[index],
                  ),
                );
              },
              itemCount: kProjectsTitles.length,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          MaterialButton(
            hoverColor: kPrimaryColor.withAlpha(150),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: kPrimaryColor)),
            onPressed: () {
              launchURL("https://github.com/reubendeekay");
            },
            child: Text(
              "See More",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
