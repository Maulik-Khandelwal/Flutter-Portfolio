import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/views/about/about_view_intro_mobile.dart';
import 'package:portfolio/views/skill/skill_mobile.dart';
import 'package:velocity_x/velocity_x.dart';

import 'SkillPic_widget_mobile.dart';

class SkillContentMobile extends StatelessWidget {
  const SkillContentMobile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final AboutTitle = "--- Skills which I have ---"
        .text
        .white
        .textStyle(GoogleFonts.rajdhani())
        .xl
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              // Color(0xFF7A7A7A),
              // Color(0xFF616161),
              Color(0xFF4A4A4A).withOpacity(0.7),
              Color(0xFF333333).withOpacity(0.7),
              Color(0xFF1E1E1E).withOpacity(0.7),
              Color(0xFF050505).withOpacity(0.7),
            ],
          ),
        ),
        width: 600,
        height: 1570,
        child: ListView(
//          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            addAutomaticKeepAlives: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: AboutTitle,
                ),
              ),
              // Align(alignment: Alignment.center, child: MyPicSkillMobile()),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: skillMobile(),
              ),
            ]),
      ),
    );
  }
}
