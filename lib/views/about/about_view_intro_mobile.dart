import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/custom_text/custom_text.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroductionAboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.6;
    double c_height = MediaQuery.of(context).size.height * 2.55;
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
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

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xFF34B0F3).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Flexible(
          child: Text(
            text,
            style: GoogleFonts.rajdhani(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff717C99),
              letterSpacing: 1.75,
            ),
          ),
        )
      ],
    );
  }

  Widget point(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidHandPointRight,
          color: Color(0xff717C99),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Flexible(
          child: text.text
              .color(Color(0xff717C99))
              .xl2
              .textStyle(GoogleFonts.rajdhani(fontWeight: FontWeight.w500))
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final AboutintroWidget =
        "Well, I have done a lot of introspection before I start to pen down my thoughts on this part. Writing about oneself isn’t an easy task (I believe). You need to be honest in every word of your prose. Its not a problem to be vulnerable, your strengths, weaknesses, your stories define who you are, what you are and why you are! So, firstly I say that I am still into the process of knowing me. The best is yet to come. Who am I? Answering a question like this has often been difficult even for those with high intelligence quotient. I may not know who I fully am, but I know who I am not. I am not a vindictive person, I am not irresponsible, I am not slack with my studies, I am not dishonest and I will never deliberately set out to hurt anyone.  I know I am not perfect, I have never tried to be, but one thing is true – I AM WHO I AM.\n\n"
                "⚡ I’m currently sleeping 😴 or working on my laptop 👨‍💻\n"
                "⚡ I’m good in Android Development and currently learning Web Development With Flutter💪.\n"
                "⚡ I’m looking to collaborate on Machine Learning & Python 🐍 projects.\n"
                "⚡ I Love Machine Learning and Open CV🌐\n"
                "⚡ Ask me about why do I think aliens 👽 exist.\n"
                "⚡ Fun fact: My smartness 💡 lies in my laziness 😴\n"
            .text
            .white
            .xl2
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40);
    return ListView(
        physics: NeverScrollableScrollPhysics(),
        addAutomaticKeepAlives: true,
        children: <Widget>[
          "Well, I have done a lot of introspection before I start to pen down my thoughts on this part. Writing about oneself isn’t an easy task (I believe). You need to be honest in every word of your prose. Its not a problem to be vulnerable, your strengths, weaknesses, your stories define who you are, what you are and why you are! So, firstly I say that I am still into the process of knowing me. The best is yet to come. Who am I? Answering a question like this has often been difficult even for those with high intelligence quotient. I may not know who I fully am, but I know who I am not. I am not a vindictive person, I am not irresponsible, I am not slack with my studies, I am not dishonest and I will never deliberately set out to hurt anyone.  I know I am not perfect, I have never tried to be, but one thing is true – I AM WHO I AM."
              .text
              .color(Color(0xff717C99))
              .xl2
              .textStyle(GoogleFonts.rajdhani(fontWeight: FontWeight.w500))
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          SizedBox(
            height: 25,
          ),
          point(context,
              "I’ve always sought out opportunities and challenges that are meaningful to me."),
          SizedBox(
            height: 20,
          ),
          point(context,
              "I've never stopped engaging my passion to help others and solve problems."),
          SizedBox(
            height: 20,
          ),
          point(context,
              "Well organized person, Problem Solver, Enthusiastic Learner."),
          SizedBox(
            height: 20,
          ),
          point(context,
              "I love Programming, Software development, Computer Science related topics and Machine Learning."),
          SizedBox(
            height: 20,
          ),
          point(context,
              "Don't know why but I love C++, maybe because of my interest in competitive programming 😉"),
          SizedBox(
            height: 20,
          ),
          point(context, "I am a Petrolhead and I love Motorsport 🏎"),
          SizedBox(
            height: 20,
          ),
          point(context,
              "I love to watch and play Cricket 🏏, Ya and I am a fan of Football also ⚽"),
          SizedBox(
            height: 20,
          ),
          point(context,
              "Fan of Music, Outdoor Activities, TV Series and Video Games."),
          SizedBox(
            height: 40,
          ),
          "Here are a few technologies I've been working with recently:\n\n"
              .text
              .color(Color(0xff828DAA))
              .size(20)
              .bold
              .letterSpacing(0.75)
              .textStyle(GoogleFonts.rajdhani(fontWeight: FontWeight.w500))
              .make(),
          // CustomText(
          //   text:
          //       "Here are a few technologies I've been working with recently:\n\n",
          //   textsize: 16.0,
          //   color: Color(0xff828DAA),
          //   fontWeight: FontWeight.w500,
          //   letterSpacing: 0.75,
          // ), // crossAlignment: CrossAxisAlignment.center,
          Container(
            height: size.height * 0.25,
            width: size.width,
            //   color: Colors.redAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.40,
                  height: size.height * 0.45,
                  child: Column(
                    children: [
                      technology(context, "Dart"),
                      technology(context, "Flutter"),
                      technology(context, "Firebase"),
                      technology(context, "C++"),
                      technology(context, "Tensorflow"),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.40,
                  height: size.height * 0.25,
                  child: Column(
                    children: [
                      technology(context, "Python"),
                      technology(context, "Pygame"),
                      technology(context, "Open CV"),
                      technology(context, "Machine Learning"),
                      technology(context, "Data Science"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]);
  }
}
