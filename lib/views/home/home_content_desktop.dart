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
          NameWidget(),
          Expanded(
            child: Center(
              child: IntroductionWidget(),
            ),
          )
        ]);
  }
}
