import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Animations/FadeAnimation.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:steps/steps.dart';

class ExperiencesDesktop extends StatelessWidget {
  const ExperiencesDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: MediaQuery.of(context).size.height - 100,
      width: MediaQuery.of(context).size.width - 400,
      alignment: Alignment.topCenter,
      child: Steps(
        direction: Axis.vertical,
        size: 20.0,
        path: {'color': Color(0xFF34B0F3), 'width': 2.75},
        steps: [
          {
            'color': Color(0xff64FFDA),
            'background': Coolors.accentColor,
            'label': '🎓',
            'content': FadeAnimation(
                1,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "School of Scholars, Amravati (INDIA)",
                      style: GoogleFonts.rajdhani(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "I studied in School of Scholars, Amravati from kindergarten to class 10.\nThis part of life has a huge role in making me what I am today.\nI shall always be indebted to what this school has given me.\nI passed my CBSE board exams with 96.2%.\n",
                      style: GoogleFonts.rajdhani(
                        fontSize: 13.0,
                        color: Color(0xffCCD6F6).withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "- 2017",
                      style: GoogleFonts.rajdhani(
                        fontSize: 12.0,
                        color: Color(0xffCCD6F6).withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Coolors.accentColor,
            'label': '🎓',
            'content': FadeAnimation(
                2,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Dr. Ambedkar College, Deekshabhoomi, Nagpur (INDIA)",
                      style: GoogleFonts.rajdhani(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "I joined Dr. Ambedkar College, Deekshabhoomi, Nagpur for my 11th and 12th class.\nI passed by Higher Secondary Exams with 87.5%.\n",
                      style: GoogleFonts.rajdhani(
                        fontSize: 13.0,
                        color: Color(0xffCCD6F6).withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "2017 - 2019",
                      style: GoogleFonts.rajdhani(
                        fontSize: 12.0,
                        color: Color(0xffCCD6F6).withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Coolors.accentColor,
            'label': '🎓',
            'content': FadeAnimation(
                3,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Vishwakarma Institute of Technology, Pune (INDIA)",
                      style: GoogleFonts.rajdhani(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "I am currently pursuing Bachelor's Degree in Computer Engineering \nVishwakarma Institute of Technology, Pune.\nCurrent CGPA - 9.12\n",
                      style: GoogleFonts.rajdhani(
                        fontSize: 13.0,
                        color: Color(0xffCCD6F6).withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "2019 - Present",
                      style: GoogleFonts.rajdhani(
                        fontSize: 12.0,
                        color: Color(0xffCCD6F6).withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Coolors.accentColor,
            'label': '🌟',
            'content': FadeAnimation(
                4,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Microsoft Learn Student Club VIT Pune",
                      style: GoogleFonts.rajdhani(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "AI/ML Developer at Microsoft Learn Student Club VIT Pune\n",
                      style: GoogleFonts.rajdhani(
                        fontSize: 13.0,
                        color: Color(0xffCCD6F6).withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "August - 2020 - Present",
                      style: GoogleFonts.rajdhani(
                        fontSize: 12.0,
                        color: Color(0xffCCD6F6).withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )),
          },
        ],
      ),
    );
  }
}
