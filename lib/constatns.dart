import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'about.dart';
import 'courses.dart';
import 'forms/editAbout.dart';
import 'settings.dart';
import './forms/addTrainee.dart';
import './forms/addcoruse.dart';

import 'dashboard.dart';

var theme = ThemeData().copyWith(
    textTheme: TextTheme(
        displaySmall: TextStyle(fontFamily: 'Tajawal-Regular'),
        bodyMedium: TextStyle(fontFamily: 'Tajawal-Regular')));

var pages = [
  GetPage(
    name: Courses.route,
    page: () {
      return Courses();
    },
  ),
  GetPage(
    name: Dashboard.route,
    page: () {
      return Dashboard();
    },
  ),
  GetPage(
    name: Settings.route,
    page: () {
      return Settings();
    },
  ),
  GetPage(
    name: AddCourse.route,
    page: () {
      return AddCourse();
    },
  ),
  GetPage(
    name: AddTrainee.route,
    page: () {
      return AddTrainee();
    },
  ),
  GetPage(
    name: About.route,
    page: () {
      return About();
    },
  ),
  GetPage(
    name: EditAbout.route,
    page: () {
      return EditAbout();
    },
  ),
];
