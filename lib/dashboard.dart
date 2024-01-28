import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';

const Catologes = [
  {
    "name": "قائمه الكورسات",
    "route": "/courses",
    "png": false,
    "img": "assets/images/courses.json",
  },
  {
    "name": "الاعدادات",
    "route": "/courses",
    "png": false,
    "img": "assets/images/settings.json",
  },
  {
    "name": "عن أستلر",
    "route": "/courses",
    "png": true,
    "img": "assets/images/logo.png",
  },
  {
    "name": "تواصل معنا ",
    "route": "/courses",
    "png": false,
    "img": "assets/images/contact.json",
  },
  {
    "name": "خدمات أستلر  ",
    "route": "/courses",
    "png": false,
    "img": "assets/images/services.json",
  },
];

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  static const route = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Astler'),
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Color.fromARGB(255, 4, 1, 155)])),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white38)),
                  child: FittedBox(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          width: 100,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Astler Training Center',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'مركز أستلر للتدريب الهندسي',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Divider(),
                GridView.builder(
                  itemCount: Catologes.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 6),
                  itemBuilder: (context, index) {
                    bool png = Catologes[index]['png'] as bool;
                    return Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45),
                        boxShadow: [
                          BoxShadow(
                              blurStyle: BlurStyle.inner,
                              offset: Offset(-2, 4),
                              blurRadius: 4,
                              color: Colors.black54)
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          png
                              ? Image.asset(
                                  'assets/images/logo.png',
                                  width: 100,
                                )
                              : LottieBuilder.asset(
                                  Catologes[index]['img'] as String,
                                  width: 100,
                                ),
                          Text(
                            Catologes[index]['name'] as String,
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          )),
    );
  }
}
