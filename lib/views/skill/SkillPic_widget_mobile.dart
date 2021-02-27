import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyPicSkillMobile extends StatelessWidget {
  const MyPicSkillMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: SizedBox(height: 300, width: 299, child: MyPicWidget()),
    );
  }
}

class MyPicWidget extends StatelessWidget {
  const MyPicWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: new AssetImage("assets/skills.png"),
      height: 120,
      width: 120,
      fit: BoxFit.cover,
    );
  }
}
