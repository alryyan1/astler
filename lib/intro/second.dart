import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../widgets.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 4, 87, 188),
          Color.fromARGB(255, 75, 50, 116)
        ]),
      ),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              alignment: Alignment(0, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient:
                      LinearGradient(colors: [Colors.blue, Colors.black26])),
              height: 100,
              child: Text(
                '  خدمات أستلر',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Header(
                      name: 'التدريب',
                    ),
                    Header(
                      name: 'التحليل',
                    ),
                    Header(name: 'النمذجه'),
                    Header(name: 'التصميم'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
