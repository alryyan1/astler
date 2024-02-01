import 'package:astler/controllers/localController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'translations/translation.dart';

import 'constatns.dart';
import 'home.dart';
import 'package:get/get.dart';
import 'bindings.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(Astler());
}

class Astler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: pages,
      initialBinding: AppBindings(),
      locale: Get.deviceLocale,
      translations: AppTranslator(),
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
