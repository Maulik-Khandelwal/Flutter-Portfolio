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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maulik Khandelwal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Coolors.accentColor,
        accentColor: Coolors.secondaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // textTheme: GoogleFonts.poppinsTextTheme()
      ),
      home: LayoutTemplate(),
    );
  }
}
