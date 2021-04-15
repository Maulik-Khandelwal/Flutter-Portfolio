import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/views/layout_template/layout_template.dart';
import 'Colors/colors.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MaterialColor kPrimaryColor = const MaterialColor(
    0xFF34B0F3,
    const <int, Color>{
      50: const Color(0xFF34B0F3),
      100: const Color(0xFF34B0F3),
      200: const Color(0xFF34B0F3),
      300: const Color(0xFF34B0F3),
      400: const Color(0xFF34B0F3),
      500: const Color(0xFF34B0F3),
      600: const Color(0xFF34B0F3),
      700: const Color(0xFF34B0F3),
      800: const Color(0xFF34B0F3),
      900: const Color(0xFF34B0F3),
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maulik Khandelwal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
        accentColor: Coolors.accentColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LayoutTemplate(),
    );
  }
}
