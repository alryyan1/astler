import 'package:astler/intro/first.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'dashboard.dart';
import 'intro/second.dart';
import 'intro/third.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool lastpage = false;
  PageController controller = PageController();
  void changePage() {
    controller.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  void goToHome() {
    Get.offNamed(Dashboard.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              print(value);
              if (value == 2) {
                setState(() {
                  lastpage = true;
                });
              }
            },
            controller: controller,
            children: [First(), Second(), Third()],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothPageIndicator(controller: controller, count: 3),
                ElevatedButton(
                    onPressed: lastpage ? goToHome : changePage,
                    child: Text(lastpage ? 'الرئيسيه' : 'التالي'))
              ],
            ),
            alignment: Alignment(0, 0.9),
          ),
        ],
      ),
    );
  }
}
