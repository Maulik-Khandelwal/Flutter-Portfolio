import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Animations/FadeAnimation.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:portfolio/widgets/custom_text/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/extensions/hover_extensions.dart';

class IntroductionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.82;
    double c_height = 370000 * 8 / (MediaQuery.of(context).size.width + 3500);
    return Container(
      height: c_height,
      width: c_width,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
            height: 20,
          ),
          FadeAnimation(
              3.5,
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: LimitedBox(
                      maxWidth: 10,
                      child: VxBox()
                          .color(Color(0xFF34B0F3))
                          .size(60, 10)
                          .make()
                          .px4()
                          .shimmer(primaryColor: Color(0xFF34B0F3)),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: LimitedBox(
                      maxWidth: 10,
                      child: VxBox()
                          .color(Coolors.accentColor)
                          .size(60, 10)
                          .make()
                          .px4()
                          .shimmer(primaryColor: Coolors.accentColor),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          FadeAnimation(
              4,
              Row(
                children: [
                  LimitedBox(
                    maxWidth: 150,
                    child: RaisedButton(
                      onPressed: () {
                        launch("https://google.com/");
                      },
                      hoverColor: Color(0xFF34B0F3),
                      shape: Vx.roundedSm,
                      color: Coolors.accentColor.withOpacity(1),
                      textColor: Coolors.primaryColor,
                      child: "Resume"
                          .text
                          .bold
                          .size(16)
                          .textStyle(GoogleFonts.rajdhani())
                          .make(),
                    ).h(40),
                  ).moveUpOnHover,
                ],
              ).moveUpOnHover), // crossAlignment: CrossAxisAlignment.center,
        ]);
  }
}
