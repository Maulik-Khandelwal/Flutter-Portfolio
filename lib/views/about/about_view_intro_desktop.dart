import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Animations/FadeAnimation.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:portfolio/widgets/custom_text/custom_text.dart';
import 'package:portfolio/extensions/hover_extensions.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroductionAboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.6;
    double c_height = MediaQuery.of(context).size.height * 0.7;

    return Container(
      padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
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

  Widget technology(BuildContext context, String text, double fadeTime) {
    return FadeAnimation(
      fadeTime,
      Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: Color(0xFF34B0F3),
            size: 15.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.001,
          ),
          Text(
            text,
            style: GoogleFonts.rajdhani(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Colors.white,
              letterSpacing: 1.75,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ListView(children: <Widget>[
        FadeAnimation(
            1,
            "Who am I?"
                .text
                .color(Color(0xFF34B0F3))
                .xl2
                .textStyle(GoogleFonts.montserrat(fontWeight: FontWeight.w300))
                .make()
                .w(context.isMobile
                    ? context.screenWidth
                    : context.percentWidth * 40)),
        SizedBox(
          height: 25,
        ),
        FadeAnimation(
            2,
            "I'm MAULIK KHANDELWAL, a Flutter developer, Competitive programmer and a tech enthusiast."
                .text
                .color(Colors.white)
                .xl3
                .textStyle(GoogleFonts.rajdhani(fontWeight: FontWeight.w500))
                .make()
                .w(context.isMobile
                    ? context.screenWidth
                    : context.percentWidth * 40)),
        SizedBox(
          height: 25,
        ),
        FadeAnimation(
            3,
            "I am a 2nd Year Computer Science Engineering undergraduate from India.\nI'm a Software Developer who loves puzzles and problem solving.\nA Competetive programmer from time to time.\nInterested in Flutter, Machine Learning, Deep Learning and Software Development in general.\nAnd a person who loves Cricket, Anime, Music and anything related to tech and also a Petrolhead."
                .text
                .color(Color(0xff717C99))
                .xl2
                .textStyle(GoogleFonts.rajdhani(fontWeight: FontWeight.w500))
                .make()
                .w(context.isMobile
                    ? context.screenWidth
                    : context.percentWidth * 40)),
        SizedBox(
          height: 15,
        ),
        FadeAnimation(
          3.5,
          Divider(
            color: Coolors.accentColor.withOpacity(0.7),
            height: 20,
            thickness: 2,
            // indent: MediaQuery.of(context).size.width * 0.07,
            // endIndent: MediaQuery.of(context).size.width * 0.07,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        FadeAnimation(
            4,
            "Technologies I have worked with:\n\n"
                .text
                .color(Color(0xFF34B0F3))
                .size(15)
                .bold
                .letterSpacing(0.75)
                .textStyle(GoogleFonts.montserrat(fontWeight: FontWeight.w200))
                .make()),
        width > 1080
            ? Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  technology(context, "Flutter", 4.3),
                  SizedBox(
                    width: width * 0.009,
                  ),
                  technology(context, "Dart", 4.6),
                  SizedBox(
                    width: width * 0.009,
                  ),
                  technology(context, "Firebase", 4.9),
                  SizedBox(
                    width: width * 0.009,
                  ),
                  technology(context, "C++", 5.2),
                  SizedBox(
                    width: width * 0.009,
                  ),
                  technology(context, "Python", 5.5),
                  SizedBox(
                    width: width * 0.009,
                  ),
                  technology(context, "Machine Learning", 5.8),
                ],
              )
            : Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      technology(context, "Flutter", 4.3),
                      SizedBox(
                        width: width * 0.009,
                      ),
                      technology(context, "Dart", 4.6),
                      SizedBox(
                        width: width * 0.009,
                      ),
                      technology(context, "Firebase", 4.9),
                      SizedBox(
                        width: width * 0.009,
                      ),
                      technology(context, "C++", 5.2),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      technology(context, "Python", 5.5),
                      SizedBox(
                        width: width * 0.009,
                      ),
                      technology(context, "Machine Learning", 5.8),
                    ],
                  )
                ],
              ),
        SizedBox(
          height: 10,
        ),
        FadeAnimation(
          6.3,
          Divider(
            color: Coolors.accentColor.withOpacity(0.7),
            height: 20,
            thickness: 2,
            // indent: MediaQuery.of(context).size.width * 0.07,
            // endIndent: MediaQuery.of(context).size.width * 0.07,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        FadeAnimation(
          6.8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              // SizedBox(
              //   width: 20,
              // ),
              // Expanded(
              //   child: FadeAnimation(
              //     7.8,
              //     Divider(
              //       color: Coolors.accentColor.withOpacity(0.7),
              //       height: 20,
              //       thickness: 2,
              //       indent: 20,
              //       endIndent: MediaQuery.of(context).size.width * 0.14,
              //     ),
              //   ),
              // ),
            ],
          ),
        )
      ]),
    );
  }
}
