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
      getPages: pages,
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
