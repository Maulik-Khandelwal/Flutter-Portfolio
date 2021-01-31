import 'package:flutter/material.dart';
import 'package:portfolio/routing/route_names.dart';
import 'package:portfolio/extensions/hover_extensions.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                NavBarItem('Home', HomeRoute).moveUpOnHover,
                SizedBox(
                  width: 60,
                ),
                NavBarItem('About', AboutRoute).moveUpOnHover,
                SizedBox(
                  width: 60,
                ),
                NavBarItem('Experience', ExperienceRoute).moveUpOnHover,
                SizedBox(
                  width: 60,
                ),
                NavBarItem('Projects', ProjectRoute).moveUpOnHover,
              ],
            )
          ]),
    );
  }
}
