import 'package:flutter/material.dart';
import 'package:my_app/Screens/login.dart';

import '../Component/buttons.dart';
import '../Component/input_box.dart';
import '../Component/labels.dart';

class TroubleLoginHome extends StatefulWidget {
  const TroubleLoginHome({Key? key}) : super(key: key);

  @override
  _TroubleLoginHomeState createState() => _TroubleLoginHomeState();
}

class _TroubleLoginHomeState extends State<TroubleLoginHome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width,
              margin: EdgeInsets.only(top: size.height / 15),
              child: Image.asset("assets/images/trubble.png"),
            ),
            Container(
              margin: EdgeInsets.only(
                left: size.width / 15,
                right: size.width / 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    child: Text(
                      "Trouble Log In?",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  Labels.inputlabels("Enter your Email"),
                  InputBox.UserInput(false),
                  SizedBox(
                    height: size.height / 70,
                  ),
                  Container(
                    width: size.width,
                    child: Button.RoseButton(
                        context, "Send Reset Email", LoginHome()),
                  ),
                  SizedBox(
                    height: size.height / 8,
                  ),
                  // FooterText.FotterMessage()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
