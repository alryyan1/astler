import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromARGB(255, 255, 255, 255), Colors.blueAccent]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            fit: BoxFit.contain,
            'assets/images/logo.png',
            width: 250,
          ),
          Text(
            'للاستشارات الهندسيه والتدريب',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Divider(),
          Text(
            'شريك دربك للنجاح',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 91, 90, 90)),
          ),
          LottieBuilder.asset(
            'assets/images/architect.json',
            width: 300,
          ),
        ],
      ),
    );
  }
}
