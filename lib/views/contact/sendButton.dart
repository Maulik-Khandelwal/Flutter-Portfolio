import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/Colors/colors.dart';
import 'AlertBanner.dart';
import 'emailDataProvider.dart';

class Send extends StatefulWidget {
  @override
  _SendState createState() => _SendState();
}

class _SendState extends State<Send> {
  Gradient gradient = Coolors.gradientWithOutHover;

  Color fontColor = Coolors.accentColor;

  @override
  Widget build(BuildContext context) {
    final emailData = Provider.of<EmailData>(context);
    final form = Form.of(context);
    return GestureDetector(
      onTap: () {
        if (form.validate()) {
          form.save();
          // Firestore.instance.collection("messages").document().setData(
          //   {
          //     "name": emailData.name,
          //     "email": emailData.email,
          //     "subject": emailData.subject,
          //     "message": emailData.message,
          //     "time": DateTime.now(),
          //   },
          // );
          buildShowGeneralDialog(context, "Message sent! 😄");
        }
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            gradient = Coolors.gradientOnHover;
            fontColor = Colors.white;
          });
        },
        onExit: (event) {
          setState(() {
            gradient = Coolors.gradientWithOutHover;
            fontColor = Theme.of(context).accentColor;
          });
        },
        child: Container(
          height: 50,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: gradient,
            border: Coolors.border,
          ),
          child: Text(
            "SEND",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: fontColor,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
