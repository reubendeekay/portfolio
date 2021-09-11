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
          Text(
            "R",
            style: GoogleFonts.spartan(
                fontSize: 40,
                color: kPrimaryColor,
                fontWeight: FontWeight.w900),
          ),
          Text(
            ".",
            style: GoogleFonts.notoSans(
                fontSize: 60, color: Colors.white, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
