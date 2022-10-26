import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Wala extends StatefulWidget {
  const Wala({super.key});

  @override
  State<Wala> createState() => _WalaState();
}

class _WalaState extends State<Wala> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("meka thamai wala canteen eka")),
      ),
    );
  }
}
