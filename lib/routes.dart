import 'package:flutter/material.dart';
import 'package:my_app/Screens/login.dart';
import 'package:my_app/Screens/register.dart';
import 'package:my_app/Screens/wala_canteen.dart';
import 'package:my_app/home.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => const HomePage(),
  Wala.routeName: (context) => const Wala(),
  LoginHome.routeName: (context) => const LoginHome(),
  RegistrationHome.routeName: (context) => const RegistrationHome(),
};
