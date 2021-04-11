import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'experiences_content_mobile.dart';

class ExperienceViewMobile extends StatelessWidget {
  const ExperienceViewMobile({Key key}) : super(key: key);

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
//      height: MediaQuery.of(context).size.height * 1.14,
//      width: MediaQuery.of(context).size.width - 100,
        //color: Colors.tealAccent,
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
        height: 800,
        child: ListView(
//          shrinkWrap: true,
//          physics: ClampingScrollPhysics(),
          physics: BouncingScrollPhysics(),
          addAutomaticKeepAlives: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 30),
              child: Align(
                alignment: Alignment.topCenter,
                child: ExperienceTitle,
              ),
            ),
            Align(
                alignment: Alignment.center, child: ExperiencePictureWidget()),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(), child: ExperiencesMobile()),
            ),
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
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Image(
//                      fit: BoxFit.cover,
        image: AssetImage("assets/programmer.png"),
      ),
    );
  }
}
