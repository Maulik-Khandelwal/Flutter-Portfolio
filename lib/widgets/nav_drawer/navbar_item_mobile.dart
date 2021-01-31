import 'package:flutter/material.dart';
import 'package:portfolio/services/navigation_service.dart';

import '../../locator.dart';

class NavBarItemMobile extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItemMobile(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
        Navigator.of(context).pop();
      },
      child: Text(
        title,
        style:
            TextStyle(fontSize: 18, color: Color(0xffCCD6F6).withOpacity(0.9)),
      ),
    );
  }
}
