import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color color;
  final double letterSpacing;
  final FontWeight fontWeight;
  CustomText(
      {@required this.text,
      @required this.textsize,
      @required this.color,
      this.letterSpacing,
      this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.rajdhani(
            color: color,
            fontSize: textsize,
            letterSpacing: letterSpacing == null ? 0.10 : letterSpacing,
            fontWeight: fontWeight == null ? FontWeight.w400 : fontWeight));
  }
}
