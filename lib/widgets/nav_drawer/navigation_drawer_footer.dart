import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class NavigationDrawerFooter extends StatelessWidget {
  const NavigationDrawerFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo = Icon(CupertinoIcons.heart);
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width * 0.5,
      //color: Colors.white,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: "Designed & Built by"
                  .text
                  .center
                  .size(11)
                  .letterSpacing(1.75)
                  .maxLines(2)
                  .color(Colors.white.withOpacity(0.4))
                  .make(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: "Maulik Khandelwal "
                      .text
                      .center
                      .size(11)
                      .letterSpacing(1.75)
                      .maxLines(2)
                      .color(Colors.white.withOpacity(0.4))
                      .make(),
                ),
                Icon(
                  CupertinoIcons.heart_solid,
                  color: Colors.blue,
                  size: 15,
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: " Flutter"
                      .text
                      .center
                      .size(11)
                      .letterSpacing(1.75)
                      .maxLines(2)
                      .color(Colors.white.withOpacity(0.4))
                      .make(),
                ),
              ],
            ),
          ],
        ),
      )
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
