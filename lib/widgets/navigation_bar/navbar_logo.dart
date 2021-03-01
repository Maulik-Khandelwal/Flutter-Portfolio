import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Colors/colors.dart';

// class NavBarLogo extends StatelessWidget {
//   const NavBarLogo({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 75,
//       width: 75,
//       child: Center(child: Image.asset('assets/logo.gif')),
//     );
//   }
// }
import 'package:responsive_builder/responsive_builder.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavbarLogoMob(),
      tablet: NavbarLogoMob(),
      desktop: NavbarLogoDesk(),
    );
  }
}

class NavbarLogoMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        width: 160,
        child: Align(
          alignment: Alignment.centerRight,
          child: Row(
            children: [
              Text(
                '<',
                style: GoogleFonts.stalemate(
                  color: Coolors.accentColor,
                  fontSize: 25,
                ),
              ),
              Text(
                'Maulik Khandelwal',
                style: GoogleFonts.stalemate(
                  color: Color(0xFF34B0F3),
                  fontSize: 25,
                ),
              ),
              Text(
                '/',
                style: GoogleFonts.stalemate(
                  color: Coolors.accentColor,
                  fontSize: 30,
                ),
              ),
              Text(
                '>',
                style: GoogleFonts.stalemate(
                  color: Coolors.accentColor,
                  fontSize: 25,
                ),
              )
            ],
          ),
        )
        //Image.asset('assets/images/logo.png'),
        );
  }
}

class NavbarLogoDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        width: 400,
        child: Row(
          children: [
            Text(
              '<',
              style: GoogleFonts.stalemate(
                color: Coolors.accentColor,
                fontSize: 30,
              ),
            ),
            Text(
              'Maulik Khandelwal',
              style: GoogleFonts.stalemate(
                color: Color(0xFF34B0F3),
                fontSize: 30,
              ),
            ),
            Text(
              '/',
              style: GoogleFonts.stalemate(
                color: Coolors.accentColor,
                fontSize: 40,
              ),
            ),
            Text(
              '>',
              style: GoogleFonts.stalemate(
                color: Coolors.accentColor,
                fontSize: 30,
              ),
            )
          ],
        )
        //Image.asset('assets/images/logo.png'),
        );
  }
}
