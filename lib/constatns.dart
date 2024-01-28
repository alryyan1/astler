import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard.dart';

var theme = ThemeData().copyWith(
    textTheme: TextTheme(
        displaySmall: TextStyle(fontFamily: 'Tajawal-Regular'),
        bodyMedium: TextStyle(fontFamily: 'Tajawal-Regular')));

var pages = [
  GetPage(
    name: Dashboard.route,
    page: () {
      return Dashboard();
    },
  )
];
