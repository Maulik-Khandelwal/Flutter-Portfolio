import 'dart:math';
import 'package:portfolio/Animations/FadeAnimation.dart';
import 'package:portfolio/extensions/hover_extensions.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/models/projectCard.dart';
import 'dart:html' as html;

import 'custom_text/custom_text.dart';
import 'method/method.dart';

class ProjectWidget extends StatelessWidget {
  Random random = new Random();
  Method method = Method();
  final String link;
  final String image;
  final String projectDesc;
  final String projectname;
  final String tech1;
  final String tech2;
  final String tech3;
  final double fadeTime;

  ProjectWidget(
      {this.link,
      this.image,
      this.projectname,
      this.projectDesc,
      this.tech1,
      this.tech2,
      this.tech3,
      this.fadeTime});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    int randomNumber = random.nextInt(5000);
    return FadeAnimation(
      fadeTime,
      Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: CustomText(
            text: projectname,
            textsize: 17.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            letterSpacing: 0.75,
          ),
        ),
        FlipCard(
          flipOnTouch: true,
          direction: randomNumber % 2 == 0
              ? FlippingDirection.VERTICAL
              : FlippingDirection.HORIZONTAL,
          front: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.4,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          back: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.width * 0.4,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(16)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF1E1E1E).withOpacity(0.95),
                          Color(0xFF1E1E1E).withOpacity(0.7),
                          // Color(0xFF050505).withOpacity(0.95),
                        ])),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: CustomText(
                        text: projectDesc,
                        textsize: 12.0,
                        color: Colors.white,
                        letterSpacing: 0.75,
                      ),
                    ),
                    // SizedBox(height: 40),
                    // InkWell(
                    //     child: new Text(link,
                    //         style: Theme.of(context)
                    //             .textTheme
                    //             .caption
                    //             .apply(color: Colors.blue)),
                    //     onTap: () => method.launchURL(link)),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     IconButton(
                    //       icon: FaIcon(FontAwesomeIcons.github),
                    //       color: Colors.white,
                    //       onPressed: () => method.launchURL(link),
                    //     ).moveUpOnHover,
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: tech1 == null ? "" : tech1,
              textsize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              letterSpacing: 1.75,
            ),
            SizedBox(
              width: 16.0,
            ),
            CustomText(
              text: tech2 == null ? "" : tech2,
              textsize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              letterSpacing: 1.75,
            ),
            SizedBox(
              width: 16.0,
            ),
            CustomText(
              text: tech3 == null ? "" : tech3,
              textsize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              letterSpacing: 1.75,
            ),
            SizedBox(
              width: 16.0,
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.github),
              color: Colors.white,
              onPressed: () => method.launchURL(link),
            ).moveUpOnHover,
          ],
        ),
      ]),
    );
  }
}

//   FlipCard(
//   flipOnTouch: true,
//   direction: randomNumber > 2500
//       ? FlippingDirection.VERTICAL
//       : FlippingDirection.HORIZONTAL,
//   front: Container(
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Expanded(
//               flex: 40,
//               child: Image.asset(
//                 _project.image,
//                 width: width * .25,
//                 height: width * .25,
//               )),
//           Expanded(
//             flex: 3,
//             child: Container(),
//           ),
//           Expanded(
//             flex: 60,
//             child: Container(
//               padding: EdgeInsets.only(top: 8.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(_project.name,
//                       style: Theme.of(context).textTheme.title),
//                   SizedBox(
//                     height: height * .01,
//                   ),
//                   Text(
//                     _project.description,
//                     textScaleFactor: 1.2,
//                     style: Theme.of(context).textTheme.caption,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "Click for more information",
//                     textScaleFactor: 1,
//                     style: Theme.of(context).textTheme.caption,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
//   back: Container(
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Expanded(
//             flex: 60,
//             child: Container(
//               padding: EdgeInsets.only(top: 8.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(_project.name,
//                       style: Theme.of(context).textTheme.title),
//                   SizedBox(
//                     height: height * .01,
//                   ),
//                   Text(
//                     _project.type,
//                     textScaleFactor: 1.2,
//                     style: Theme.of(context).textTheme.caption,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     _project.techStack,
//                     textScaleFactor: 1.2,
//                     style: Theme.of(context).textTheme.caption,
//                   ),
//                   SizedBox(height: 10),
//                   InkWell(
//                       child: new Text(_project.link,
//                           style: Theme.of(context)
//                               .textTheme
//                               .caption
//                               .apply(color: Colors.blue)),
//                       onTap: () => launch(_project.link)),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Container(),
//           ),
//           Expanded(
//               flex: 40,
//               child: Image.asset(
//                 _project.image,
//                 width: width * .25,
//                 height: width * .25,
//               )),
//         ],
//       ),
//     ),
//   ),
// );
//
