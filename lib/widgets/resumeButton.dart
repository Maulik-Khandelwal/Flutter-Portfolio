import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/extensions/hover_extensions.dart';

class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  Gradient gradient = Coolors.gradientWithOutHover;

  Color fontColor = Coolors.accentColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch("https://google.com/");
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            gradient = Coolors.gradientOnHover;
            fontColor = Colors.white;
          });
        },
        onExit: (event) {
          setState(() {
            gradient = Coolors.gradientWithOutHover;
            fontColor = Theme.of(context).accentColor;
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 50,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: gradient,
              border: Coolors.border,
            ),
            child: Text(
              "Resume",
              style: GoogleFonts.rajdhani(
                fontWeight: FontWeight.bold,
                color: fontColor,
                fontSize: 17,
              ),
            ),
          ),
        ),
      ),
    ).moveUpOnHover;
  }
}

class ResumeMobile extends StatefulWidget {
  @override
  _ResumeMobileState createState() => _ResumeMobileState();
}

class _ResumeMobileState extends State<ResumeMobile> {
  Gradient gradient = Coolors.gradientWithOutHover;

  Color fontColor = Coolors.accentColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch("https://google.com/");
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            gradient = Coolors.gradientOnHover;
            fontColor = Colors.white;
          });
        },
        onExit: (event) {
          setState(() {
            gradient = Coolors.gradientWithOutHover;
            fontColor = Theme.of(context).accentColor;
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 40,
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: Coolors.gradientOnHover,
              border: Coolors.border,
            ),
            child: Text(
              "Resume",
              style: GoogleFonts.rajdhani(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    ).moveUpOnHover;
  }
}
