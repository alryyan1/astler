import 'package:astler/intro/first.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro/second.dart';
import 'intro/third.dart';

class Home extends StatelessWidget {
  Home({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              First(),
              Second(),
               Third()
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothPageIndicator(controller: controller, count: 3),
                ElevatedButton(
                    onPressed: () {
                      if (controller.page == 3) {
                        
                      }
                      controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    },
                    child: Text(controller.page == 3 ? 'التالي' : 'الصفحه الرئيسيه' ))
              ],
            ),
            alignment: Alignment(0, 0.9),
          ),
        ],
      ),
    );
  }
}
