import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constatns.dart';
import 'home.dart';

main() {
  runApp(Astler());
}

class Astler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
