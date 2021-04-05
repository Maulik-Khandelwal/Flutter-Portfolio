import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/method/method.dart';
import 'package:portfolio/widgets/project_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'FeatureProjectMobile.dart';

class ProjectViewMobile extends StatelessWidget {
  const ProjectViewMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProjectTitle = "--- Some Things I've Built ---"
        .text
        .textStyle(GoogleFonts.rajdhani())
        .white
        .xl
        .lineHeight(1.3)
        .size(context.isMobile ? 20 : 20)
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
        height: 1800,
        child: ListView(
//          shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            addAutomaticKeepAlives: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ProjectTitle,
                ),
              ),
              Projects()
            ]),
      ),
    );
  }
}

class Projects extends StatelessWidget {
  Method method = Method();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(children: [
      SizedBox(
        height: size.height * 0.04,
      ),
      ProjectWidget(
        link: "https://github.com/Maulik-Khandelwal/Flutter-Portfolio",
        image: "assets/portfolio.png",
        projectname: 'Portfolio web app',
        projectDesc:
            "fvgbh njhbygtfvuydcrf  ftbnaw3r a3wr aw3r 33 raw3r 3wr 3w3r a 3  ra3wr a3wrgr ",
        tech1: "Flutter",
        tech2: "Dart",
        tech3: "Flutter Web",
      ),
      SizedBox(
        height: size.height * 0.06,
      ),
      ProjectWidget(
        link:
            "https://github.com/Maulik-Khandelwal/Image-to-ASCII-Art-Converter",
        image: "assets/ascii.png",
        projectname: 'Image to ASCII art converter',
        projectDesc:
            "fvgbh njhbygtfvuydcrf tvgbhnbyi aw r3wa ra4wtawt gtfudr tsb ydhdrt y etyftbn8",
        tech1: "Python",
        tech2: "PIL",
        tech3: "Image processing",
      ),
      SizedBox(
        height: size.height * 0.06,
      ),
      ProjectWidget(
        link: "https://github.com/Maulik-Khandelwal/Quiz-Maker-App",
        image: "assets/Quiz Maker.png",
        projectname: 'Quiz Maker',
        projectDesc:
            "fvgbh njhbygtfvuydcrf tvgbhnbyi gtfudr ftbnyta ra3wr a3wr a3w 3tw34tr 3r  aw",
        tech1: "Flutter",
        tech2: "Dart",
        tech3: "Mobile App Development",
      ),
      SizedBox(
        height: size.height * 0.06,
      ),
      ProjectWidget(
        link: "https://github.com/Maulik-Khandelwal/Memory-Game-Flutter",
        image: "assets/Memory Game.png",
        projectname: 'Flutter Memory Game',
        projectDesc:
            "fvgbh njhbygtfvuydcrf tvgbhnbyi gtfudr ftbnytfcdfta wa4w34  gyfd ftgyuh8hug8",
        tech1: "Flutter",
        tech2: "Dart",
        tech3: "Mobile App Development",
      ),
      SizedBox(
        height: size.height * 0.06,
      ),
      ProjectWidget(
        link: "https://github.com/Maulik-Khandelwal/PyGame-Snake-Game",
        image: "assets/Snake.png",
        projectname: "Snake Game",
        projectDesc:
            "fvgbh njhbygtfvuydcrf tvgbhnbyi gtfudrrs er gaergaerg g a4 ga4w g4g4w gtgy8",
        tech1: "Python",
        tech2: "PyGame",
        tech3: "Game",
      ),
      SizedBox(
        height: size.height * 0.06,
      ),

      // MobileProject(
      //   ontab: () {
      //     method.launchURL(
      //         "https://github.com/SatYu26/Face-Mask-Detection-Alert-System");
      //   },
      //   image: "assets/Alert.jpg",
      //   projectname: 'Face Mask Detection Alert System',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method
      //         .launchURL("https://github.com/SatYu26/Github-Contribution-Hack");
      //   },
      //   image: "assets/git.png",
      //   projectname: 'GitHub Contribution Hack',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL(
      //         "https://github.com/SatYu26/Mask-Detection-and-Recognition-using-Deep-Learning-Keras");
      //   },
      //   image: "assets/mask.jpeg",
      //   projectname: 'Mask Detection and Recognition',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL("https://github.com/SatYu26/Portfolio-Code-Flutter");
      //   },
      //   image: "assets/Portfolio.png",
      //   projectname: 'Portfolio Website',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL(
      //         "https://github.com/SatYu26/Hand-Gesture-Classifier-With-Tensorflow.js");
      //   },
      //   image: "assets/tfjs.png",
      //   projectname: 'Hand Gesture Classifier',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL(
      //         "https://marketplace.visualstudio.com/items?itemName=Satyu.wolverine");
      //   },
      //   image: "assets/wolverine.png",
      //   projectname: 'Wolverine',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL(
      //         "https://github.com/SatYu26/Fashion-Classifier-With-Tensorflow.js");
      //   },
      //   image: "assets/fashion.jpg",
      //   projectname: 'Fashion Classifier',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL("https://github.com/SatYu26/URL-Shortener");
      //   },
      //   image: "assets/url.jpg",
      //   projectname: 'URL Shortener',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL("https://github.com/SatYu26/SRM-WiFi-Auto-Login");
      //   },
      //   image: "assets/wifi.jpg",
      //   projectname: 'SRM WiFi Auto Login',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL("https://github.com/SatYu26/Expression-Tracker");
      //   },
      //   image: "assets/expressions.png",
      //   projectname: 'Expression Tracker',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL(
      //         "https://github.com/SatYu26/Handwriting-Classifier-With-Tensorflow.js");
      //   },
      //   image: "assets/hw.png",
      //   projectname: 'Handwriting Classifier',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL("https://github.com/SatYu26/Motion-Detector");
      //   },
      //   image: "assets/motion.png",
      //   projectname: 'Motion Detector',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method
      //         .launchURL("https://github.com/SatYu26/YouTube-Video-Downloader");
      //   },
      //   image: "assets/tube.jpeg",
      //   projectname: 'YouTube Video Downloader',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL("https://github.com/SatYu26/Sudoku-Solver");
      //   },
      //   image: "assets/Sudoku.png",
      //   projectname: 'Sudoku Solver',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL("https://github.com/SatYu26/Friday");
      //   },
      //   image: "assets/Friday.png",
      //   projectname: 'Friday',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL("https://github.com/SatYu26/Face-Track");
      //   },
      //   image: "assets/face-track.jpg",
      //   projectname: 'Face Track',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL(
      //         "https://github.com/SatYu26/Face-Recognition-Model-Version2");
      //   },
      //   image: "assets/faceRecog.jpg",
      //   projectname: 'Face Recognition Model',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL("https://github.com/SatYu26/Invisibility-Cloak");
      //   },
      //   image: "assets/InvisibilityCloak.jpg",
      //   projectname: 'Invisibility Cloak',
      // ),
      // SizedBox(
      //   height: size.height * 0.06,
      // ),
      // MobileProject(
      //   ontab: () {
      //     method.launchURL("https://github.com/SatYu26/PyGame-Snake");
      //   },
      //   image: "assets/snake.png",
      //   projectname: 'PyGame Snake',
      // ),
    ]);
  }
}
