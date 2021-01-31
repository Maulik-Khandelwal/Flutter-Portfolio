import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'about_view_desktop.dart';
import 'about_view_mobile.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: AboutContentMobile(),
        desktop: AboutContentDesktop(),
      ),
    );
  }
}
