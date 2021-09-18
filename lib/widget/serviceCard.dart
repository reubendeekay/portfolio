import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;
  final String serviceLink;
  final double cardWidth;
  final double cardHeight;

  const ServiceCard(
      {@required this.serviceIcon,
      this.serviceTitle,
      this.serviceDescription,
      this.serviceLink,
      this.cardHeight,
      this.cardWidth});

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
        onTap: () => launch(widget.serviceLink),
        onHover: (isHovering) {
          if (isHovering) {
            setState(() {
              isHover = true;
            });
          } else {
            setState(() {
              isHover = false;
            });
          }
          cardKey.currentState.toggleCard();
        },
        child: FlipCard(
            key: cardKey,
            flipOnTouch: false,
            front: Container(
              width: widget.cardWidth,
              height: widget.cardHeight,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: isHover
                      ? [
                          BoxShadow(
                            color: kPrimaryColor.withAlpha(200),
                            blurRadius: 12.0,
                            offset: Offset(2.0, 3.0),
                          )
                        ]
                      : []),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    widget.serviceIcon,
                    height: height * 0.1,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    widget.serviceTitle,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: height * 0.03,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            back: Container(
              width: widget.cardWidth,
              height: widget.cardHeight,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: isHover
                      ? [
                          BoxShadow(
                            color: kPrimaryColor.withAlpha(200),
                            blurRadius: 12.0,
                            offset: Offset(2.0, 3.0),
                          )
                        ]
                      : []),
              child: Center(
                child: Text(
                  widget.serviceDescription,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: height * 0.02,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w400,
                      height: width < 900 ? 2.3 : 1.5),
                ),
              ),
            )));
  }
}
