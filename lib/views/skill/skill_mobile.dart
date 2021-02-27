import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/custom_text/custom_text.dart';
import 'package:velocity_x/velocity_x.dart';

class skillMobile extends StatelessWidget {
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
          Flexible(child: Skill()),
        ],
      ),
    );
  }
}

class Skill extends StatelessWidget {
  const Skill({
    Key key,
  }) : super(key: key);

  Widget buildTextHeader(String text) {
    double textScaleFactor = 1.5;
    return Text(
      text,
      textScaleFactor: textScaleFactor,
      style: GoogleFonts.rajdhani(
          color: Colors.white, fontWeight: FontWeight.w500),
    );
  }

  Widget buildSkill({String name, int value}) {
    double textScaleFactor = 1;

    return ListTile(
      title: Text(
        name,
        textScaleFactor: textScaleFactor,
        style: GoogleFonts.rajdhani(
            color: Color(0xff717C99),
            fontSize: 15,
            fontWeight: FontWeight.w500),
      ),
      trailing: buildLevel(value),
    );
  }

  Row buildLevel(int value) {
    List<Widget> widgets = List();
    double size = 10;

    for (int index = 0; index < 10; index++) {
      var color = Color(0xff717C99);
      if (index < value) {
        color = Color(0xFF34B0F3);
      }
      widgets.add(Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ));
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: widgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: NeverScrollableScrollPhysics(),
        addAutomaticKeepAlives: true,
        children: <Widget>[
          SkillsLogoMob(),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              children: <Widget>[
                buildTextHeader('Programming languages'),
                Divider(
                  color: Color(0xff717C99),
                  height: 20,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.07,
                  endIndent: MediaQuery.of(context).size.width * 0.07,
                ),
                buildSkill(name: 'C++', value: 8),
                buildSkill(name: 'Python', value: 8),
                buildSkill(name: 'Dart', value: 5),
                buildSkill(name: 'Java', value: 4),
                buildSkill(name: 'R', value: 5),
                SizedBox(
                  height: 20,
                ),
                buildTextHeader('Soft skills'),
                Divider(
                  color: Color(0xff717C99),
                  height: 20,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.07,
                  endIndent: MediaQuery.of(context).size.width * 0.07,
                ),
                buildSkill(name: 'Teamwork', value: 9),
                buildSkill(name: 'Communication', value: 7),
                SizedBox(
                  height: 20,
                ),
                buildTextHeader('Tools & Technologies'),
                Divider(
                  color: Color(0xff717C99),
                  height: 20,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.07,
                  endIndent: MediaQuery.of(context).size.width * 0.07,
                ),
                buildSkill(name: 'Git', value: 8),
                buildSkill(name: 'Linux', value: 7),
                buildSkill(name: 'Cmake', value: 8),
                buildSkill(name: 'Flutter', value: 9),
                buildSkill(name: 'Firebase', value: 8),
                SizedBox(
                  height: 20,
                ),
                buildTextHeader('Other Skills'),
                Divider(
                  color: Color(0xff717C99),
                  height: 20,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.07,
                  endIndent: MediaQuery.of(context).size.width * 0.07,
                ),
                buildSkill(name: 'Data Science', value: 8),
                buildSkill(name: 'AI/ML', value: 7),
                buildSkill(name: 'Algorithm', value: 6),
                buildSkill(name: 'Data structure', value: 8),
                buildSkill(name: 'MYSQL', value: 5),
              ],
            ),
          )
        ]);
  }
}

class SkillsLogoMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Text(
          //   "What i do",
          //   style: TextStyle(
          //       fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
          //   textAlign: TextAlign.center,
          // ),
          // SizedBox(
          //   height: 30,
          // ),
          // Text(
          //   "CRAZY FULL STACK DEVELOPER WHO WANTS TO EXPLORE EVERY TECH STACK",
          //   style: TextStyle(
          //     fontSize: 22,
          //   ),
          //   textAlign: TextAlign.center,
          // ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.laptopCode,
                    size: 60,
                    color: Color(0xff717C99),
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.python,
                    size: 60,
                    color: Color(0xff717C99),
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.android,
                    size: 60,
                    color: Color(0xff717C99),
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Icon(
                    Icons.analytics_outlined,
                    size: 60,
                    color: Color(0xff717C99),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Icon(
                    MaterialCommunityIcons.language_cpp,
                    size: 60,
                    color: Color(0xff717C99),
                  )),
              Container(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.git,
                    size: 60,
                    color: Color(0xff717C99),
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Icon(
                    Icons.sports_cricket,
                    size: 60,
                    color: Color(0xff717C99),
                  )),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.java,
                    size: 60,
                    color: Color(0xff717C99),
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.database,
                    size: 60,
                    color: Color(0xff717C99),
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.linux,
                    size: 60,
                    color: Color(0xff717C99),
                  )),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          // Text(
          //   "⚡ Develop highly interactive Front end / User Interfaces for your web and mobile applications",
          //   style: TextStyle(fontSize: 18),
          // ),
          // Text(
          //   "⚡ Progressive Web Applications ( PWA ) in normal and SPA Stacks",
          //   style: TextStyle(fontSize: 18),
          // ),
          // Text(
          //   "⚡ Integration of third party services such as Firebase/ AWS / Digital Ocean",
          //   style: TextStyle(fontSize: 18),
          // ),
        ],
      ),
    );
  }
}
