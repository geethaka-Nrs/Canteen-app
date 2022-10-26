import 'dart:js';

import 'package:flutter/material.dart';
import 'package:my_app/home.dart';

final Map<String, WidgetBuilder>routes = {
  HomePage.routeName: (context) => const HomePage(),
};