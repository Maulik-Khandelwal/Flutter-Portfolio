import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/Animations/FadeAnimation.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/extensions/hover_extensions.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final s = "Maulik\nKhandelwal."
        .text
        .white
        .xl4
        // .textStyle(GoogleFonts.cormorantGaramond())
        .textStyle(GoogleFonts.pressStart2p())
        .lineHeight(1.4)
        .maxLines(2)
        .size(context.isMobile ? 8 : 20)
        // .bold
        .make()
        .shimmer();

    final SNameWidget = context.isMobile
        ? FittedBox(
            fit: BoxFit.fitWidth,
            child: s,
          )
        : s;

    return Container(
      width: 600,
      height: 390,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            context.isMobile ? MediaQuery.of(context).size.width * 0.09 : 60,
            0,
            0,
            0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          addAutomaticKeepAlives: true,
          children: <Widget>[
            FittedBox(
              fit: BoxFit.fitWidth,
              child: FadeAnimation(
                1,
                Row(
                  children: [
                    Text(
                      "WELCOME TO MY",
                      style: GoogleFonts.rajdhani(
                        color: Coolors.accentColor,
                        fontSize: 25,
                      ),
                    ),
                    // Align(
                    //     alignment: Alignment.topLeft,
                    //     child: Image.asset(
                    //       "assets/home1.gif",
                    //       height: height * 0.07,
                    //     ).shimmer(
                    //         primaryColor: Coolors.accentColor,
                    //         showAnimation: false)),
                    Text(
                      " PORTFOLIO",
                      style: GoogleFonts.rajdhani(
                        color: Color(0xFF34B0F3),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.25,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FadeAnimation(2, SNameWidget),
            SizedBox(
              height: 30,
            ),
            // Row(
            //   children: [
            //     LimitedBox(
            //       maxWidth: 80,
            //       child: VxBox()
            //           .color(Coolors.accentColor)
            //           .size(60, 10)
            //           .make()
            //           .px4()
            //           .shimmer(primaryColor: Coolors.accentColor),
            //     ),
            //   ],
            // ),
            FadeAnimation(
              3,
              Row(
                children: [
                  Icon(
                    Icons.play_arrow_rounded,
                    color: Coolors.accentColor,
                  ),
                  TyperAnimatedTextKit(
                      isRepeatingAnimation: true,
                      speed: Duration(milliseconds: 50),
                      textStyle: GoogleFonts.rajdhani(
                          color: Colors.white,
                          fontSize:
                              context.isMobile ? height * 0.028 : height * 0.03,
                          fontWeight: FontWeight.w300),
                      text: [
                        " Student",
                        " Learner",
                        " Flutter Developer",
                        " Competitive Programmer",
                        " Machine Learning Enthusiast"
                      ]),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SocialAccounts(),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      FadeAnimation(
        4,
        Icon(
          AntDesign.mail,
          color: Colors.white,
        )
            .mdClick(() {
              launch("mailto:kmaulik07@gmail.com");
            })
            .make()
            .moveUpOnHover,
      ),
      20.widthBox,
      FadeAnimation(
          4.25,
          Icon(
            AntDesign.twitter,
            color: Colors.white,
          )
              .mdClick(() {
                launch("https://twitter.com/i_am_Maulik_K?s=09");
              })
              .make()
              .moveUpOnHover),
      20.widthBox,
      FadeAnimation(
          4.5,
          Icon(
            AntDesign.instagram,
            color: Colors.white,
          )
              .mdClick(() {
                launch("https://www.instagram.com/maulik_khandelwal/");
              })
              .make()
              .moveUpOnHover),
      20.widthBox,
      FadeAnimation(
          4.75,
          Icon(
            AntDesign.linkedin_square,
            color: Colors.white,
          )
              .mdClick(() {
                launch(
                    "https://www.linkedin.com/in/maulik-khandelwal-6142b51b0/");
              })
              .make()
              .moveUpOnHover),
      20.widthBox,
      FadeAnimation(
          5,
          Icon(
            AntDesign.github,
            color: Colors.white,
          )
              .mdClick(() {
                launch("https://github.com/Maulik-Khandelwal");
              })
              .make()
              .moveUpOnHover),
    ].hStack();
  }
}
