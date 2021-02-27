import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:portfolio/routing/route_names.dart';
import 'package:portfolio/routing/router.dart';
import 'package:portfolio/services/navigation_service.dart';
import 'package:portfolio/widgets/centered_view/centered_view.dart';
import 'package:portfolio/widgets/nav_drawer/navigation_drawer.dart';
import 'package:portfolio/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locator.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        resizeToAvoidBottomInset: false,
        backgroundColor: Coolors.primaryColor,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            PictureWidget(),
            Align(alignment: Alignment.bottomCenter, child: Footer()),
            CenteredView(
              child: Column(children: <Widget>[
                NavigationBar(),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Image(
        image: new AssetImage("assets/BGM1.jpg"),
        fit: BoxFit.cover,
        color: Colors.black87.withOpacity(0.7),
        colorBlendMode: BlendMode.darken,
      ),
      desktop: Image(
        image: new AssetImage("assets/BG.jpg"),
        fit: BoxFit.cover,
        color: Colors.black87.withOpacity(0.7),
        colorBlendMode: BlendMode.darken,
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width - 100,
        //color: Colors.white,
        child: Text(
          "\n\n\nDesigned & Built by Maulik Khandelwal 💙 Flutter",
          style: GoogleFonts.poppins(
            color: Colors.white.withOpacity(0.4),
            letterSpacing: 1.75,
            fontSize: 14.0,
          ),
        ),
      ),
      mobile: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width - 100,
        //color: Colors.white,
        child: Text(
          "",
          style: TextStyle(
            color: Colors.white.withOpacity(0.4),
            letterSpacing: 1.75,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
