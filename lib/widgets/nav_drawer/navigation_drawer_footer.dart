import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NavigationDrawerFooter extends StatelessWidget {
  const NavigationDrawerFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width * 0.5,
      //color: Colors.white,
      child: "Designed & Built by\nMaulik Khandelwal 💙 Flutter"
          .text
          .center
          .size(12)
          .letterSpacing(1.75)
          .maxLines(2)
          .color(Colors.white.withOpacity(0.4))
          .make()
      // textAlign: TextAlign.center,
      // maxLines: 2,
      // style: TextStyle(
      //   color: Colors.white.withOpacity(0.4),
      //   letterSpacing: 1.75,
      //   fontSize: 12.0,
      // ),
      ,
    );
  }
}
