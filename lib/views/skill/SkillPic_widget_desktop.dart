import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyPicSkillDesktop extends StatelessWidget {
  const MyPicSkillDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.32,
          child: Image(
//                      fit: BoxFit.cover,
            image: AssetImage("assets/skills.png"),
          ),
        ),
      ),
    );
  }
}
