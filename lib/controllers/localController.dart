import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  var appLocal = Locale('en', 'US');

  void changeLocale(locale) {
    Get.updateLocale(locale);

  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
