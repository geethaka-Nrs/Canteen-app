
import 'package:flutter/material.dart';
import 'package:my_app/Screens/wala_canteen.dart';
import 'package:my_app/home.dart';

final Map<String, WidgetBuilder>routes = {
  HomePage.routeName: (context) => const HomePage(),
  Wala.routeName:(context) => const Wala(),
};