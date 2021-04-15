import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Animations/FadeAnimation.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:portfolio/views/contact/CosWave.dart';
import 'package:portfolio/views/contact/SineWave.dart';
import 'package:portfolio/widgets/custom_text/custom_text.dart';
import 'package:portfolio/widgets/resumeButton.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/extensions/hover_extensions.dart';

class IntroductionTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.5;
    double c_height = MediaQuery.of(context).size.height * 0.71;
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      width: c_width,
      height: c_height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(child: Introduction()),
        ],
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final introWidget =
        // "BELIEVE IN YOURSELF!\nThe only way to DISCOVER the limits of the POSSIBLE is to go beyond them into the IMPOSSIBLE.\n"
        "Hello! I'am Maulik Khandelwal.\n"
                "I am a 2nd Year Computer Science Engineering undergraduate from Vishwakarma Institute of Technology, Pune.\n"
                "I am a Software Developer who is passionate about creating technology to elevate people and build community, and a Learning Enthusiast, who is obsessed with the idea of improving himself and wants a platform to grow and excel.\n"
            .text
            .white
            .size(23)
            .textStyle(GoogleFonts.rajdhani())
            .maxLines(15)
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40);
    double width = MediaQuery.of(context).size.width * 0.005;
    return ListView(children: <Widget>[
      FadeAnimation(1, "- Introduction".text.gray500.widest.sm.make()),
      SizedBox(
        height: 15,
      ),
      // CustomText(
      //   // text: "I've come too far to quit. It's better to take another step.",
      //   text: "I build things for Android and Web.",
      //   textsize: 40.0,
      //   color: Color(0xffCCD6F6).withOpacity(0.6),
      //   fontWeight: FontWeight.w700,
      // ),
      FadeAnimation(
          2,
          "I want to make things that make a difference."
              .text
              .color(
                Color(0xffCCD6F6).withOpacity(0.6),
              )
              .size(40)
              .textStyle(GoogleFonts.rajdhani())
              .maxLines(1)
              .bold
              .make()),
      SizedBox(
        height: 15,
      ),
      FadeAnimation(3, introWidget),
      FadeAnimation(
          3.5,
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(children: [
              // Particle(size.height, size.width),
              SineWave(
                size: Size(MediaQuery.of(context).size.width, 80),
                xOffset: 0,
                yOffset: 0,
                color: Colors.red,
              ),
              Opacity(
                opacity: 0.9,
                child: CosWave(
                  size: Size(MediaQuery.of(context).size.width, 80),
                  xOffset: 45,
                  yOffset: -5,
                ),
              )
            ]),
          )),
      SizedBox(
        height: 50,
      ),
      FadeAnimation(
          4,
          Row(
            children: [
              Resume(),
            ],
          )), // crossAlignment: CrossAxisAlignment.center,
    ]);
  }
}
