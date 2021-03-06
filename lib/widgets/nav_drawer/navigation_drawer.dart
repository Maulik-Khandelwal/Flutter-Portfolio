import 'package:flutter/material.dart';
import 'package:portfolio/routing/route_names.dart';
import 'navigation_drawer_footer.dart';
import 'navigation_drawer_header.dart';
import 'drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(0), right: Radius.circular(16)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            // Color(0xFF7A7A7A),
            // Color(0xFF616161),
            // Color(0xFF4A4A4A).withOpacity(0.95),
            // Color(0xFF333333).withOpacity(0.95),
            Color(0xFF1E1E1E).withOpacity(0.95),
            Color(0xFF050505).withOpacity(0.95),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Home', Icons.home, HomeRoute),
          DrawerItem('About', Icons.person, AboutRoute),
          DrawerItem('Skills', Icons.bar_chart, SkillRoute),
          DrawerItem('Experience', Icons.work, ExperienceRoute),
          DrawerItem('Projects', Icons.palette, ProjectRoute),
          DrawerItem('Contact', Icons.mail, ContactRoute),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.08,
          // ),
          Spacer(),
          Center(child: NavigationDrawerFooter()),
        ],
      ),
    );
  }
}
