import 'package:flutter/material.dart';
import '../widgets.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(255, 255, 255, 255), Colors.blueAccent]),
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
                      name: 'عمل انيميشن للمشاريع',
                    ),
                    Header(
                      name: 'تصميم المباني ',
                    ),
                    Header(name: 'التصميم الداخلي'),
                    Header(name: 'الاشراف علي التنفيذ'),
                    Header(name: 'كورسات برامج معماريه'),
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
