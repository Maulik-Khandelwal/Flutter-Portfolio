import 'package:flutter/material.dart';

import 'Introduction/introduction.dart';
import 'name_widget/name_widget.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.035),
            child: NameWidget(),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.02),
              child: Center(
                child: IntroductionWidget(),
              ),
            ),
          )
        ]);
  }
}
