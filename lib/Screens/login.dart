import 'package:flutter/material.dart';

import 'package:my_app/Screens/register.dart';
import 'package:my_app/Screens/trubble_login.dart';

import 'package:my_app/home.dart';

import '../Component/buttons.dart';
import '../Component/input_box.dart';
import '../Component/labels.dart';
import '../Component/social_media_buttons.dart';

class LoginHome extends StatefulWidget {
  static const routeName = "/login";
  const LoginHome({Key? key}) : super(key: key);

  @override
  _LoginHomeState createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                    // children: [
                    // Container(
                    //   height: size.height / 8,
                    //   child: Image.asset("assets/images/#"),
                    // ),
                    //   Container(
                    //     width: size.width / 2.3,
                    //     height: size.height / 5,
                    //     margin: EdgeInsets.only(left: size.width / 10),
                    //     child: Text(
                    //       "Login ITUM Canteens",
                    //       style: TextStyle(
                    //           fontSize: 40, fontWeight: FontWeight.w700),
                    //     ),
                    //   ),
                    // ],
                    ),
                Center(
                  child: Container(
                    height: size.height / 3,
                    child: Image.asset("assets/images/login.png"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 90,
            ),
            Container(
              margin: EdgeInsets.only(
                left: size.width / 15,
                right: size.width / 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Labels.inputlabels("Enter your Email"),
                  InputBox.UserInput(false),
                  Labels.inputlabels("Enter your Password"),
                  InputBox.UserInput(true),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TroubleLoginHome()));
                    },
                    child: Container(
                      margin:
                          EdgeInsets.only(left: size.width / 1.6, bottom: 5),
                      child: Text("Trouble login?"),
                    ),
                  ),
                  Container(
                    width: size.width,
                    child: Button.RoseButton(context, "Login", HomePage()),
                  ),
                  SizedBox(
                    height: size.height / 70,
                  ),
                  // Container(child: DividerLine.DividerOr(size)),
                  SizedBox(
                    height: size.height / 70,
                  ),
                  TwoIconButton.iconbuton(size),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegistrationHome(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Don't you have an account?",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  // FooterText.FotterMessage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
