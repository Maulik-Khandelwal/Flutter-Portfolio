import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/extensions/hover_extensions.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.5;
    double c_height = MediaQuery.of(context).size.height * 0.51;

    final SNameWidget = "Maulik\nKhandelwal."
        .text
        .white
        .xl4
        // .textStyle(GoogleFonts.cormorantGaramond())
        .textStyle(GoogleFonts.pressStart2p())
        .lineHeight(1.4)
        .maxLines(2)
        .size(context.isMobile ? 14 : 20)
        // .bold
        .make()
        .shimmer();

    return Container(
      width: 600,
      height: c_height,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          addAutomaticKeepAlives: true,
          children: <Widget>[
            if (context.isMobile) 50.heightBox else 10.heightBox,
            Align(
                alignment: Alignment.topLeft,
                child:
                    CustomAppBar().shimmer(primaryColor: Coolors.accentColor)),
            SizedBox(
              height: 20,
            ),
            SNameWidget,
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                LimitedBox(
                  maxWidth: 80,
                  child: VxBox()
                      .color(Coolors.accentColor)
                      .size(60, 10)
                      .make()
                      .px4()
                      .shimmer(primaryColor: Coolors.accentColor),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SocialAccounts(),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.mail,
        color: Colors.white,
      )
          .mdClick(() {
            launch("mailto:kmaulik07@gmail.com");
          })
          .make()
          .moveUpOnHover,
      20.widthBox,
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      )
          .mdClick(() {
            launch("https://twitter.com/i_am_Maulik_K?s=09");
          })
          .make()
          .moveUpOnHover,
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      )
          .mdClick(() {
            launch("https://www.instagram.com/maulik_khandelwal/");
          })
          .make()
          .moveUpOnHover,
      20.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      )
          .mdClick(() {
            launch("https://www.linkedin.com/in/maulik-khandelwal-6142b51b0/");
          })
          .make()
          .moveUpOnHover,
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      )
          .mdClick(() {
            launch("https://github.com/Maulik-Khandelwal");
          })
          .make()
          .moveUpOnHover,
    ].hStack();
  }
}
