import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'MyPic_widget_desktop.dart';
import 'about_view_intro_desktop.dart';

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AboutTitle = "About Me"
        .text
        .white
        .xl
        .textStyle(GoogleFonts.barriecito())
        .lineHeight(1)
        .size(context.isMobile ? 25 : 30)
        .bold
        .make()
        .shimmer();

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                // Color(0xFF7A7A7A),
                // Color(0xFF616161),
                Color(0xFF4A4A4A).withOpacity(0.7),
                Color(0xFF333333).withOpacity(0.7),
                Color(0xFF1E1E1E).withOpacity(0.7),
                Color(0xFF050505).withOpacity(0.7),
              ],
            ),
          ),
          width: 600,
          height: 600,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                  alignment: Alignment.centerRight, child: MyPicAboutDesktop()),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                    child: Align(
                      alignment: Alignment.center,
                      child: AboutTitle,
                    ),
                  ),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IntroductionAboutDesktop(),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
