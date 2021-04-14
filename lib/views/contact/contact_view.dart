import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Animations/FadeAnimation.dart';
import 'package:portfolio/Animations/Particles.dart';
import 'package:portfolio/Animations/latter.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:portfolio/views/layout_template/layout_template.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/extensions/hover_extensions.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart' as urlLauncher;
import 'package:url_launcher/url_launcher.dart';

import 'CosWave.dart';
import 'SineWave.dart';
import 'contactForm.dart';
import 'emailDataProvider.dart';

class ContactView extends StatefulWidget {
  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double maxHeight = 90;
        double fSize = 18;

        if (sizingInformation.isDesktop) {
          fSize = 18;
          maxHeight = 80;
        } else if (sizingInformation.isTablet) {
          fSize = 18;
          maxHeight = 110;
        } else {
          fSize = 15;
          maxHeight = 130;
        }

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            alignment: Alignment.center,
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                // Particle(size.height, size.width),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SineWave(
                    size: Size(size.width, 130),
                    xOffset: 0,
                    yOffset: 0,
                    color: Colors.red,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Opacity(
                    opacity: 0.9,
                    child: CosWave(
                      size: Size(size.width, 130),
                      xOffset: 45,
                      yOffset: -5,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 100,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeAnimation(
                            1,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Word("C"),
                                Word("o"),
                                Word("n"),
                                Word("t"),
                                Word("a"),
                                Word("c"),
                                Word("t"),
                                Word(" "),
                                Word("M"),
                                Word("e"),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FadeAnimation(
                            2,
                            LimitedBox(
                              maxHeight: maxHeight,
                              child: Container(
                                width: size.width * 0.45,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: info1),
                                      TextSpan(
                                        text: "kmaulik07@gmail.com ",
                                        style: GoogleFonts.rajdhani(
                                          color: Coolors.accentColor,
                                        ),
                                      ),
                                      TextSpan(text: info2),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.rajdhani(
                                    color: Coolors.accentBlue,
                                    fontSize: fSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ChangeNotifierProvider<EmailData>(
                            create: (context) => EmailData(),
                            child: ContactForm(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(alignment: Alignment.bottomCenter, child: Footer()),
                (sizingInformation.isMobile)
                    ? buildContactRow(context)
                    : Container(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildContactRow(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Color color = Colors.white.withOpacity(0.5);
    return Positioned(
      left: size.width * 0.25,
      bottom: 30,
      child: Container(
        width: size.width / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FadeAnimation(
              5.2,
              Icon(
                AntDesign.mail,
                color: Colors.white,
              )
                  .mdClick(() {
                    launch("mailto:kmaulik07@gmail.com");
                  })
                  .make()
                  .moveUpOnHover,
            ),
            20.widthBox,
            FadeAnimation(
                5.45,
                Icon(
                  AntDesign.twitter,
                  color: Colors.white,
                )
                    .mdClick(() {
                      launch("https://twitter.com/i_am_Maulik_K?s=09");
                    })
                    .make()
                    .moveUpOnHover),
            20.widthBox,
            FadeAnimation(
                5.7,
                Icon(
                  AntDesign.instagram,
                  color: Colors.white,
                )
                    .mdClick(() {
                      launch("https://www.instagram.com/maulik_khandelwal/");
                    })
                    .make()
                    .moveUpOnHover),
            20.widthBox,
            FadeAnimation(
                5.95,
                Icon(
                  AntDesign.linkedin_square,
                  color: Colors.white,
                )
                    .mdClick(() {
                      launch(
                          "https://www.linkedin.com/in/maulik-khandelwal-6142b51b0/");
                    })
                    .make()
                    .moveUpOnHover),
            20.widthBox,
            FadeAnimation(
                6.2,
                Icon(
                  AntDesign.github,
                  color: Colors.white,
                )
                    .mdClick(() {
                      launch("https://github.com/Maulik-Khandelwal");
                    })
                    .make()
                    .moveUpOnHover),
          ],
        ),
      ),
    );
  }

  final String info1 = "Have any question or want to talk with me ? "
      " you can easily connect with me via email at ";
  final String info2 = "or feel free to drop a message in the form! 😃";
}
