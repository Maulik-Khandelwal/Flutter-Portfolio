import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:scratcher/scratcher.dart';

class MyPicAboutDesktop extends StatelessWidget {
  const MyPicAboutDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        children: [
          if (context.isMobile) 50.heightBox else 10.heightBox,
          Align(
            alignment: Alignment.centerLeft,
//            child: SizedBox(height: 400, width: 400, child: MyPicWidget()),
            child: MyPicWidget(),
          ),
        ],
      ),
    );
  }
}

class MyPicWidget extends StatelessWidget {
  const MyPicWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 1.5,
      width: size.width / 2.5,
      // color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: size.height * 0.02,
            left: size.width * 0.06,
            child: Card(
              color: Color(0xFF34B0F3),
              // color: Color(0xFF616161).withOpacity(0),
              child: Container(
                margin: EdgeInsets.all(2.75),
                height: size.height / 2,
                width: size.width / 5,
                decoration: BoxDecoration(
                  // color: Color(0xFF616161).withOpacity(0)
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      // Color(0xFF7A7A7A),
                      // Color(0xFF616161),
                      Color(0xFF4A4A4A),
                      Color(0xFF333333),
                      Color(0xFF1E1E1E),
                      Color(0xFF050505),
                    ],
                  ),
                ),
                // child: Image(
                //   fit: BoxFit.cover,
                //   // image: AssetImage("assets/mech.gif"),
                // ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              height: size.height / 2,
              width: size.width / 5,
              color: Colors.black54,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/MyPic.gif"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
