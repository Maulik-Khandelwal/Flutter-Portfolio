import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'experiences_content_desktop.dart';

class ExperienceViewDesktop extends StatelessWidget {
  const ExperienceViewDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ExperienceTitle = "Where I've Studied/Worked"
        .text
        .white
        .xl
        .textStyle(GoogleFonts.barriecito())
        .lineHeight(1)
        .size(context.isMobile ? 25 : 30)
        .bold
        .make()
        .shimmer();
    var size = MediaQuery.of(context).size;
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
        height: 600,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ExperiencePictureWidget(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                  child: Align(
                    alignment: Alignment.center,
                    child: ExperienceTitle,
                  ),
                ),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(size.width * 0.02, 100, 0, 10),
                    child: ExperiencesDesktop(),
                  )
                ]),
          ],
        ),
      ),
    );
  }
}

class ExperiencePictureWidget extends StatelessWidget {
  const ExperiencePictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.35,
          child: Image(
//                      fit: BoxFit.cover,
            image: AssetImage("assets/programmer.png"),
          ),
        ),
      ),
    );
  }
}
