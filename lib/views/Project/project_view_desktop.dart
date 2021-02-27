import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/method/method.dart';

import 'package:velocity_x/velocity_x.dart';

import 'FeatureProjectInvertedWidget.dart';
import 'FeatureProjectWidget.dart';

class ProjectViewDesktop extends StatelessWidget {
  const ProjectViewDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProjectTitle = "--- Some Things I've Built ---"
        .text
        .white
        .textStyle(GoogleFonts.rajdhani())
        .xl
        .lineHeight(1.3)
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
        height: 600,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
                child: Align(
                  alignment: Alignment.center,
                  child: ProjectTitle,
                ),
              ),
              Projects(),
            ],
          ),
        ),
      ),
    );
  }
}

class Projects extends StatelessWidget {
  Method method = Method();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/Quiz Maker.png",
          ontab: () {
            method.launchURL("https://github.com/SatYu26/Pinged");
          },
          projectDesc:
              "Practice Quiz Maker App is a simple and user-friendly mobile application made using flutter API for creating and sharing quizzes, all with beautiful UI.",
          projectTitle: "Practice Quiz Maker",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Mobile App Development",
        ),
        FeatureProjectInverted(
          imagePath: "assets/Memory Game.png",
          ontab: () {
            method.launchURL("https://github.com/SatYu26/Flutter-Training-App");
          },
          projectDesc: "A Memory Game made using Flutter",
          projectTitle: "Flutter Memory Game",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Mobile App Development",
        ),
        FeatureProject(
          imagePath: "assets/Snake.png",
          ontab: () {
            method.launchURL(
                "https://github.com/SatYu26/Hand-Gesture-Classifier-With-Tensorflow.js");
          },
          projectDesc: "A snake game made using PyGame with Python.",
          projectTitle: "Snake Game",
          tech1: "Python",
          tech2: "PyGame",
          tech3: "Game",
        ),
        FeatureProjectInverted(
          imagePath: "assets/portfolio.png",
          ontab: () {
            method.launchURL(
                "https://github.com/Maulik-Khandelwal/Flutter-Portfolio");
          },
          projectDesc: "This doesn't require description 😉",
          projectTitle: "Portfolio web app",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Flutter Web",
        ),
        FeatureProject(
          imagePath: "assets/ascii.png",
          ontab: () {
            method.launchURL(
                "https://github.com/Maulik-Khandelwal/Image-to-ASCII-Art-Converter");
          },
          projectDesc: "A Python script which converts images into ASCII art.",
          projectTitle: "Image to ASCII art converter",
          tech1: "Python",
          tech2: "PIL",
          tech3: "Image processing",
        ),
        // FeatureProject(
        //   imagePath: "assets/Alert.jpg",
        //   ontab: () {
        //     method.launchURL(
        //         "https://github.com/SatYu26/Face-Mask-Detection-Alert-System");
        //   },
        //   projectDesc:
        //       "This machine Learning project alerts the user via email when it detects someone without mask via email and denies access the that person.",
        //   projectTitle: "Face Mask Detection Alert System",
        //   tech1: "Jupyter Notebook",
        //   tech2: "Python",
        //   tech3: "Open CV",
        // ),
        // FeatureProjectInverted(
        //   imagePath: "assets/mask.jpeg",
        //   ontab: () {
        //     method.launchURL(
        //         "https://github.com/SatYu26/Mask-Detection-and-Recognition-using-Deep-Learning-Keras");
        //   },
        //   projectDesc:
        //       "This face mask detector is accurate, and since we used the MobileNetV2 architecture, it’s also computationally efficient, making it easier to deploy the model to embedded systems",
        //   projectTitle: "Mask Detection and Recognition",
        //   tech1: "Tensorflow",
        //   tech2: "Python",
        //   tech3: "Deep Learning",
        // ),
        // FeatureProject(
        //   imagePath: "assets/Portfolio.png",
        //   ontab: () {
        //     method
        //         .launchURL("https://github.com/SatYu26/Portfolio-Code-Flutter");
        //   },
        //   projectDesc:
        //       "My Portfolio Website which i have created using Flutter Web.",
        //   projectTitle: "Portfolio Website",
        //   tech1: "Flutter",
        //   tech2: "Dart",
        //   tech3: "Web",
        // ),
        // FeatureProjectInverted(
        //   imagePath: "assets/git.png",
        //   ontab: () {
        //     method.launchURL(
        //         "https://github.com/SatYu26/Github-Contribution-Hack");
        //   },
        //   projectDesc:
        //       "A Program created to Hack of GitHub's Contribution Graph.",
        //   projectTitle: "GitHub Contribution Hack",
        //   tech1: "JavaScript",
        //   tech2: "Git",
        //   tech3: "GitHub",
        // ),
        // FeatureProject(
        //   imagePath: "assets/wolverine.png",
        //   ontab: () {
        //     method.launchURL(
        //         "https://marketplace.visualstudio.com/items?itemName=Satyu.wolverine");
        //   },
        //   projectDesc:
        //       "This is a Dark theme type extension for VS Code with some tweaks which will remind you of the night Sky (Wolverine).",
        //   projectTitle: "Wolverine",
        //   tech1: "VS Code",
        //   tech2: "Colour Theme",
        //   tech3: "CSS",
        // ),
        // FeatureProjectInverted(
        //   imagePath: "assets/fashion.jpg",
        //   ontab: () {
        //     method.launchURL(
        //         "https://github.com/SatYu26/Fashion-Classifier-With-Tensorflow.js");
        //   },
        //   projectDesc:
        //       "It is a browser based Fashion classifier Created Using Tensorflow.js.",
        //   projectTitle: "Fashion Classifier",
        //   tech1: "JavaScript",
        //   tech2: "Tensorflow",
        //   tech3: "Web",
        // ),
        // FeatureProject(
        //   imagePath: "assets/url.jpg",
        //   ontab: () {
        //     method.launchURL("https://github.com/SatYu26/URL-Shortener");
        //   },
        //   projectDesc:
        //       "This Is an Online URL SHORTENER webite created entirely on FLASK Framework.",
        //   projectTitle: "URL Shortener",
        //   tech1: "Flask",
        //   tech2: "Python",
        //   tech3: "Web",
        // ),
        // FeatureProjectInverted(
        //   imagePath: "assets/wifi.jpg",
        //   ontab: () {
        //     method.launchURL("https://github.com/SatYu26/SRM-WiFi-Auto-Login");
        //   },
        //   projectDesc:
        //       "This is a Auto login for SRM wifi connection made Using Selenium driver.",
        //   projectTitle: "SRM WiFi Auto Login",
        //   tech1: "Web Drivers",
        //   tech2: "Python",
        //   tech3: "Automation",
        // ),
        // FeatureProject(
        //   imagePath: "assets/expressions.png",
        //   ontab: () {
        //     method.launchURL("https://github.com/SatYu26/Expression-Tracker");
        //   },
        //   projectDesc: "Checking facial expressions using Open CV.",
        //   projectTitle: "Expression Tracker",
        //   tech1: "Open CV",
        //   tech2: "Python",
        //   tech3: "ML",
        // ),
        // FeatureProjectInverted(
        //   imagePath: "assets/hw.png",
        //   ontab: () {
        //     method.launchURL(
        //         "https://github.com/SatYu26/Handwriting-Classifier-With-Tensorflow.js");
        //   },
        //   projectDesc:
        //       "It is a browser based Handwriting classifier Created Using Tensorflow.js.",
        //   projectTitle: "Handwriting Classifier",
        //   tech1: "JavaScript",
        //   tech2: "Tensorflow",
        //   tech3: "Web",
        // ),
        // FeatureProject(
        //   imagePath: "assets/motion.png",
        //   ontab: () {
        //     method.launchURL("https://github.com/SatYu26/Motion-Detector");
        //   },
        //   projectDesc:
        //       "Python/OpenCV script that detect motion on webcam and allow record it to a file and plot a graph for proper Visualization.",
        //   projectTitle: "Motion Detector",
        //   tech1: "Open CV",
        //   tech2: "Python",
        //   tech3: "ML",
        // ),
        // FeatureProjectInverted(
        //   imagePath: "assets/tube.jpeg",
        //   ontab: () {
        //     method.launchURL(
        //         "https://github.com/SatYu26/YouTube-Video-Downloader");
        //   },
        //   projectDesc: "Python Script for creating a YouTube video downloader.",
        //   projectTitle: "YouTube Video Downloader",
        //   tech1: "Python",
        //   tech2: "TKinter",
        //   tech3: "YouTube",
        // ),
        // FeatureProject(
        //   imagePath: "assets/Sudoku.png",
        //   ontab: () {
        //     method.launchURL("https://github.com/SatYu26/Sudoku-Solver");
        //   },
        //   projectDesc:
        //       "This Python Script can solve Sudoku simply by providing the Unsolved sudoku in the script itself or can also solve in Android using ADB.",
        //   projectTitle: "Sudoku Solver",
        //   tech1: "ADB",
        //   tech2: "Python",
        //   tech3: "Algorithm",
        // ),
        // FeatureProjectInverted(
        //   imagePath: "assets/Friday.png",
        //   ontab: () {
        //     method.launchURL("https://github.com/SatYu26/Friday");
        //   },
        //   projectDesc:
        //       "An AI personal assistant is a piece of software that understands verbal or written commands and completes task assigned by the client. It is an example of weak AI that is it can only execute and perform quest designed by the user.",
        //   projectTitle: "Friday",
        //   tech1: "Python",
        //   tech2: "Open CV",
        //   tech3: "Voice Assistant",
        // ),
        // FeatureProject(
        //   imagePath: "assets/face-track.jpg",
        //   ontab: () {
        //     method.launchURL("https://github.com/SatYu26/Face-Track");
        //   },
        //   projectDesc: "Controlling Keyboard using facial expressions.",
        //   projectTitle: "Face Track",
        //   tech1: "Open CV",
        //   tech2: "Python",
        //   tech3: "ML",
        // ),
        // FeatureProjectInverted(
        //   imagePath: "assets/faceRecog.jpg",
        //   ontab: () {
        //     method.launchURL(
        //         "https://github.com/SatYu26/Face-Recognition-Model-Version2");
        //   },
        //   projectDesc:
        //       "It is a Face Recognition Model which can Recognize the User.",
        //   projectTitle: "Face Recognition Model",
        //   tech1: "Open CV",
        //   tech2: "Python",
        //   tech3: "ML",
        // ),
        // FeatureProject(
        //   imagePath: "assets/InvisibilityCloak.jpg",
        //   ontab: () {
        //     method.launchURL("https://github.com/SatYu26/Invisibility-Cloak");
        //   },
        //   projectDesc:
        //       "The algorithm is very similar in principle to green screening. But unlike green screening where we remove the background, in this application, we remove the foreground! This [code] turns a red colour cloth into an invisibility cloak.",
        //   projectTitle: "Invisibility Cloak",
        //   tech1: "Open CV",
        //   tech2: "Python",
        //   tech3: "Image Processing",
        // ),
        // FeatureProjectInverted(
        //   imagePath: "assets/snake.png",
        //   ontab: () {
        //     method.launchURL("https://github.com/SatYu26/PyGame-Snake");
        //   },
        //   projectDesc:
        //       "It is a Snake game which most of us may have played on our old Nokia device. This simple game is made using a python library i.e. PyGame.",
        //   projectTitle: "PyGame Snake",
        //   tech1: "TKinter",
        //   tech2: "Python",
        //   tech3: "PyGame",
        // ),
      ],
    );
  }
}
