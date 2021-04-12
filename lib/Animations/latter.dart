import 'package:flutter/material.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

class Word extends StatefulWidget {
  final String word;

  Word(
    this.word,
  );
  @override
  _WordState createState() => _WordState();
}

class _WordState extends State<Word> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  Color color = Colors.white;

  double fontsize = 50;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: Duration(
          milliseconds: 1000,
        ),
        value: 1,
        lowerBound: 0.5);
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.elasticInOut,
      reverseCurve: Curves.elasticInOut,
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          fontsize = 60;
        } else if (sizingInformation.isTablet)
          fontsize = 50;
        else
          fontsize = 32;

        return GestureDetector(
          onTapDown: (t) {
            animationController
              ..reset()
              ..forward();
            setState(() {
              color = Coolors.accentColor;
            });
          },
          onTapUp: (t) {
            setState(() {
              color = Color(0xFF34B0F3);
            });
          },
          child: MouseRegion(
            onEnter: (event) {
              animationController
                ..reset()
                ..forward();
              setState(() {
                color = Coolors.accentColor;
              });
            },
            onExit: (event) {
              setState(() {
                color = Color(0xFF34B0F3);
              });
            },
            child: ScaleTransition(
              scale: animation,
              child: widget.word.text.xl4
                  .color(color)
                  .textStyle(GoogleFonts.pressStart2p())
                  .lineHeight(1.4)
                  .maxLines(2)
                  .size(context.isMobile ? 8 : 20)
                  // .bold
                  .make(),
            ),
          ),
        );
      },
    );
  }
}
