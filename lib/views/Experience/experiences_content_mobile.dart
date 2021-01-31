import 'package:flutter/material.dart';
import 'package:steps/steps.dart';

class ExperiencesMobile extends StatelessWidget {
  const ExperiencesMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topCenter,
      child: Steps(
        direction: Axis.vertical,
        size: 20.0,
        path: {'color': Colors.lightBlue.shade200, 'width': 2.75},
        steps: [
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '🎓',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "School of Scholars, Amravati (INDIA)",
                  style: TextStyle(
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
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "- 2017",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '🎓',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Dr. Ambedkar College, Deekshabhoomi, Nagpur (INDIA)",
                  style: TextStyle(
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
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "2017 - 2019",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '🎓',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Vishwakarma Institute of Technology, Pune (INDIA)",
                  style: TextStyle(
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
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "2019 - Present",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '🌟',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Microsoft Learn Student Club VIT Pune",
                  style: TextStyle(
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
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "August - 2020 - Present",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': "📱",
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Lets Develop IT",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "I worked as a Flutter Developer and helped in designing the App for the organization.\n",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "November - 2020 ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
        ],
      ),
    );
  }
}
