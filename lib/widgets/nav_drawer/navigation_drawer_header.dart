import 'package:flutter/material.dart';
import 'drawer_logo.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            // Color(0xFF7A7A7A),
            // Color(0xFF616161),
            Color(0xFF3D3D3D).withOpacity(0),
            Color(0xFF333333).withOpacity(0),
          ],
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(child: DrawerLogo()),
        ],
      ),
    );
  }
}
