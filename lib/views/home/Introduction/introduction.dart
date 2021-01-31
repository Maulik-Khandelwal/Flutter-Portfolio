import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'introduction_mobile.dart';
import 'introduction_tablet_desktop.dart';

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: IntroductionMobile(),
      tablet: IntroductionTabletDesktop(),
    );
  }
}
