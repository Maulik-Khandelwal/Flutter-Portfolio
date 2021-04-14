import 'package:flutter/material.dart';

import 'navbar_item_mobile.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem(this.title, this.icon, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height * 0.06,
          MediaQuery.of(context).size.width * 0.04, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(width: 28),
          NavBarItemMobile(title, navigationPath),
        ],
      ),
    );
  }
}
