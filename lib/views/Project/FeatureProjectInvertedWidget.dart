import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/custom_text/custom_text.dart';
import 'package:portfolio/extensions/hover_extensions.dart';

import '../../Animations/FadeAnimation.dart';

class FeatureProjectInverted extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;
  final Function ontab;
  final double fadeTime;

  FeatureProjectInverted(
      {this.imagePath,
      this.ontab,
      this.projectDesc,
      this.projectTitle,
      this.tech1,
      this.tech2,
      this.tech3,
      this.fadeTime});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return FadeAnimation(
      fadeTime,
      Container(
        height: size.height / 1.65,
        width: size.width - 100,
        //color: Colors.tealAccent,
        child: Column(
          children: [
            Container(
              height: size.height - 300,
              width: size.width - 84,
              child: Stack(
                children: [
                  //Image
                  Positioned(
                    top: size.height * 0.02,
                    right: 100.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: (size.height + size.width) * 0.153,
                        width: size.width * 0.46,
                        //color: Colors.redAccent,
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(imagePath),
                        ),
                      ),
                    ),
                  ),

                  // Short Desc
                  Positioned(
                    top: size.height / 6,
                    left: 100.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: size.height * 0.18,
                        width: size.width * 0.40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(16)),
                          color: Color(0xFF1E1E1E).withOpacity(0.95),

                          // Color(0xFF7A7A7A),
                          // Color(0xFF616161),
                          // Color(0xFF4A4A4A).withOpacity(0.95),
                          // Color(0xFF333333).withOpacity(0.95),

                          // Color(0xFF050505).withOpacity(0.95),
                        ),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: CustomText(
                                text: projectDesc,
                                fontWeight: FontWeight.w500,
                                textsize: 16.0,
                                color: Colors.white,
                                letterSpacing: 0.75,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Project Tiitle
                  Positioned(
                    top: 16.0,
                    left: 100.0,
                    child: Container(
                      height: size.height * 0.10,
                      width: size.width * 0.24,
                      //color: Colors.indigo,
                      child: Wrap(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        alignment: WrapAlignment.start,
                        children: [
                          CustomText(
                            text: projectTitle,
                            textsize: 27,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.75,
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Project Resources
                  Positioned(
                    top: size.height * 0.36,
                    left: 100,
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.45,
                      // color: Colors.indigo,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomText(
                            text: tech1 == null ? "" : tech1,
                            textsize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 1.75,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          CustomText(
                            text: tech2 == null ? "" : tech2,
                            textsize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 1.75,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          CustomText(
                            text: tech3 == null ? "" : tech3,
                            textsize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 1.75,
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Gitub Link
                  Positioned(
                    top: size.height * 0.42,
                    left: 100,
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.25,
                      // color: Colors.indigo,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: FaIcon(FontAwesomeIcons.github),
                            color: Colors.white,
                            onPressed: ontab,
                          ).moveUpOnHover,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
