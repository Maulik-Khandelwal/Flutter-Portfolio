import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Animations/FadeAnimation.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:portfolio/views/contact/CosWave.dart';
import 'package:portfolio/views/contact/SineWave.dart';
import 'package:portfolio/widgets/resumeButton.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/extensions/hover_extensions.dart';

class IntroductionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    double c_width = MediaQuery.of(context).size.width * 0.82;
    double c_height = 370000 * 8 / (MediaQuery.of(context).size.width + 3500);
    return Stack(
      children: [
        Container(
          height: c_height,
          width: size.width,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (size.width - c_width) / 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(child: Introduction()),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SineWave(
                  size: Size(size.width, 130),
                  xOffset: 0,
                  yOffset: 0,
                  color: Colors.red,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Opacity(
                  opacity: 0.9,
                  child: CosWave(
                    size: Size(size.width, 130),
                    xOffset: 45,
                    yOffset: -5,
                  ),
                ),
              ), // cros
            ],
          ),
        )
      ],
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final introWidget =
        // "BELIEVE IN YOURSELF!\nThe only way to DISCOVER the limits of the POSSIBLE is to go beyond them into the IMPOSSIBLE.\n"
        "Hello! I'am Maulik Khandelwal.\n"
                "I am a 2nd Year Computer Science Engineering undergraduate from Vishwakarma Institute of Technology, Pune.\n"
                "I am a Software Developer who is passionate about creating technology to elevate people and build community, and a Learning Enthusiast, who is obsessed with the idea of improving himself and wants a platform to grow and excel.\n"
            .text
            .white
            .xl2
            .textStyle(GoogleFonts.rajdhani())
            .maxLines(15)
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40);
    double width = MediaQuery.of(context).size.width * 0.005;

    return ListView(
        physics: BouncingScrollPhysics(),
        addAutomaticKeepAlives: true,
        children: <Widget>[
          FadeAnimation(1, "- Introduction".text.gray500.widest.sm.make()),
          SizedBox(
            height: 20,
          ),
          FadeAnimation(
              2,
              "I want to make things that make a difference."
                  .text
                  .color(
                    Color(0xffCCD6F6).withOpacity(0.6),
                  )
                  .size(30)
                  .textStyle(GoogleFonts.rajdhani())
                  .maxLines(2)
                  .bold
                  .make()),
          SizedBox(
            height: 15,
          ),
          FadeAnimation(3, introWidget),
          SizedBox(
            height: 15,
          ),
          // FadeAnimation(
          //     3.5,
          //     Row(
          //       children: [
          //         Expanded(
          //           flex: 32,
          //           child: Divider(
          //             color: Coolors.accentBlue,
          //             height: 20,
          //             thickness: 10,
          //             // indent: MediaQuery.of(context).size.width * 0.07,
          //             // endIndent: MediaQuery.of(context).size.width * 0.07,
          //           ),
          //         ),
          //         Expanded(
          //           flex: 1,
          //           child: SizedBox(
          //             height: 20,
          //           ),
          //         ),
          //         Expanded(
          //           flex: 32,
          //           child: Divider(
          //             color: Coolors.accentColor,
          //             height: 20,
          //             thickness: 10,
          //             // indent: MediaQuery.of(context).size.width * 0.07,
          //             // endIndent: MediaQuery.of(context).size.width * 0.07,
          //           ),
          //         ),
          //       ],
          //     )),
          // SizedBox(
          //   height: 20,
          // ),
          FadeAnimation(
              4,
              Row(
                children: [ResumeMobile().moveUpOnHover],
              ).moveUpOnHover),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: SineWave(
          //     size: Size(size.width, 130),
          //     xOffset: 0,
          //     yOffset: 0,
          //     color: Colors.red,
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Opacity(
          //     opacity: 0.9,
          //     child: CosWave(
          //       size: Size(size.width, 130),
          //       xOffset: 45,
          //       yOffset: -5,
          //     ),
          //   ),
          // ), // crossAlignment: CrossAxisAlignment.center,
        ]);
  }
}
