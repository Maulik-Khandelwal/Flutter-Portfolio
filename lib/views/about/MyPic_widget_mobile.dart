import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyPicAboutMobile extends StatelessWidget {
  const MyPicAboutMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rad = MediaQuery.of(context).size.width * 0.25;
    return CircleAvatar(
      radius: rad,
      backgroundColor: Color(0xFF34B0F3),
      child: CircleAvatar(
        radius: rad - 4,
        backgroundImage: AssetImage('assets/hack.jpg'),
      ),
    );
  }
}

// class MyPicWidget extends StatelessWidget {
//   const MyPicWidget({
//     Key key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(20.0),
//       child: Image(
//         image: new AssetImage("assets/hack.jpg"),
//         height: 150,
//         width: 100,
//         fit: BoxFit.cover,
//       ),
//     );
//   }
// }
