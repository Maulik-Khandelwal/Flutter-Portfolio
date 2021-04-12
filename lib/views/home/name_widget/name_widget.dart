import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/Animations/FadeAnimation.dart';
import 'package:portfolio/Animations/latter.dart';
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

    final s = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FadeAnimation(2, Word("M")),
            FadeAnimation(2.1, Word("a")),
            FadeAnimation(2.2, Word("u")),
            FadeAnimation(2.3, Word("l")),
            FadeAnimation(2.4, Word("i")),
            FadeAnimation(2.5, Word("k")),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FadeAnimation(2, Word("K")),
            FadeAnimation(2.4, Word("h")),
            FadeAnimation(2.5, Word("a")),
            FadeAnimation(2.6, Word("n")),
            FadeAnimation(2.7, Word("d")),
            FadeAnimation(2.8, Word("e")),
            FadeAnimation(2.9, Word("l")),
            FadeAnimation(3, Word("w")),
            FadeAnimation(3.1, Word("a")),
            FadeAnimation(3.2, Word("l")),
            FadeAnimation(3.3, Word(".")),
          ],
        )
      ],
    );
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
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "import",
                            style: GoogleFonts.homemadeApple(
                              fontSize: 30,
                              color: Coolors.accentColor,
                              // wordSpacing: 10,
                            ),
                          ),
                          TextSpan(
                            text: "   'package:flutter/MyPortfolio.dart';",
                            style: GoogleFonts.sofadiOne(
                              fontSize: 30,
                              color: Color(0xffFDB99B),
                              // wordSpacing: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.15,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SNameWidget,
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
              4.2,
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
        5.2,
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
          5.45,
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
          5.7,
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
          5.95,
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
          6.2,
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
