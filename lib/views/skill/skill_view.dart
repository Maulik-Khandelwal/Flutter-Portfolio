import 'package:flutter/material.dart';
import 'package:portfolio/views/skill/skill_view_desktop.dart';
import 'package:portfolio/views/skill/skill_view_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillView extends StatelessWidget {
  const SkillView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: SkillContentMobile(),
        desktop: SkillContentDesktop(),
      ),
    );
  }
}
