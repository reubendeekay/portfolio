import 'package:flutter/material.dart';
import 'package:portfolio/sections/projects/projectsDesktop.dart';
import 'package:portfolio/sections/projects/projectsMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProjectsMobileTab(),
      tablet: ProjectsMobileTab(),
      desktop: ProjectsDesktop(),
    );
  }
}
