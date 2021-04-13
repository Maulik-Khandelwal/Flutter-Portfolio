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

class DrawerLogo extends StatelessWidget {
  const DrawerLogo({Key key}) : super(key: key);
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
        height: MediaQuery.of(context).size.height * 0.16,
        // width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '<',
              style: GoogleFonts.stalemate(
                color: Coolors.accentColor,
                fontSize: 25,
              ),
            ),
            Text(
              "Maulik Khandelwal",
              style: TextStyle(
                  color: Coolors.accentBlue,
                  fontFamily: "Agustina",
                  fontSize: 16),
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
      width: 500,
      // child: Row(
      //   children: [
      //     Text(
      //       '<',
      //       style: GoogleFonts.stalemate(
      //         color: Coolors.accentColor,
      //         fontSize: 30,
      //       ),
      //     ),
      //     Text(
      //       'Maulik Khandelwal',
      //       style: GoogleFonts.stalemate(
      //         color: Coolors.accentBlue,
      //         fontSize: 30,
      //       ),
      //     ),
      //     Text(
      //       '/',
      //       style: GoogleFonts.stalemate(
      //         color: Coolors.accentColor,
      //         fontSize: 40,
      //       ),
      //     ),
      //     Text(
      //       '>',
      //       style: GoogleFonts.stalemate(
      //         color: Coolors.accentColor,
      //         fontSize: 30,
      //       ),
      //     )
      //   ],
      // )
      //Image.asset('assets/images/logo.png'),
    );
  }
}
