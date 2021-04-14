import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

mixin Coolors {
  static const Color primaryColor = Color(0xff252733);
  static const Color secondaryColor = Color(0xff333645);
  static const Color background = Color(0x36454F);
  // static const Color accentColor = Color(0xff813362);
  static Color accentColor = Vx.purple400;
  static Color accentBlue = Color(0xFF34B0F3);
  static Color navBarColor = Vx.orange400;
  static List<Color> colors = [
    Vx.green400,
    Vx.yellow400,
    Vx.blue400,
    Vx.red400,
    Vx.teal400,
    Vx.orange400,
    Vx.pink400,
    Vx.purple400,
  ];

  static final Gradient gradientWithOutHover = LinearGradient(
    colors: [
      Colors.transparent,
      Colors.transparent,
    ],
  );

  static final Gradient gradientOnHover = LinearGradient(
    colors: [accentColor, accentBlue],
  );

  static final Color fontColorWihtoutHover = accentBlue;

  static final Color fontColorOnHover = Coolors.primaryColor;

  static final Border border = Border.all(color: accentBlue);
}
