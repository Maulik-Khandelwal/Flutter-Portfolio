import 'package:flutter/material.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:portfolio/widgets/custom_text/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/extensions/hover_extensions.dart';

class IntroductionTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.5;
    double c_height = MediaQuery.of(context).size.height * 0.65;
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      width: c_width,
      height: c_height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(child: Introduction()),
        ],
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final introWidget =
        "BELIEVE IN YOURSELF!\nThe only way to DISCOVER the limits of the POSSIBLE is to go beyond them into the IMPOSSIBLE.\n"
                // "I am a 2nd Year Computer Engineering undergraduate from Vishwakarma Institute of Technology, Pune.\n"
                "I am Your friendly Neighbourhood Developer and a Learning Enthusiast, who is obsessed with the idea of improving himself and wants a platform to grow and excel.\n"
            .text
            .white
            .xl2
            .maxLines(15)
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40);
    return ListView(children: <Widget>[
      " - Introduction".text.gray500.widest.sm.make(),
      SizedBox(
        height: 15,
      ),
      CustomText(
        // text: "I've come too far to quit. It's better to take another step.",
        text: "I build things for Android and Web.",
        textsize: 40.0,
        color: Color(0xffCCD6F6).withOpacity(0.6),
        fontWeight: FontWeight.w700,
      ),
      introWidget,
      Row(
        children: [
          LimitedBox(
            maxWidth: 80,
            child: VxBox()
                .color(Coolors.accentColor)
                .size(60, 10)
                .make()
                .px4()
                .shimmer(primaryColor: Coolors.accentColor),
          ),
        ],
      ),
      SizedBox(
        height: 25,
      ),
      Row(
        children: [
          LimitedBox(
            maxWidth: 150,
            child: RaisedButton(
              onPressed: () {
                launch(
                    "https://drive.google.com/file/d/18ykZZxT2MbAa7xmk7uUzk84ug-KKvmnB/view?usp=sharing");
              },
              hoverColor: Vx.purple700,
              shape: Vx.roundedSm,
              color: Coolors.accentColor,
              textColor: Coolors.primaryColor,
              child: "Resume".text.bold.make(),
            ).h(50),
          ).moveUpOnHover,
        ],
      ), // crossAlignment: CrossAxisAlignment.center,
    ]);
  }
}
