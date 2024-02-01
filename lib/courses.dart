import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});
  static const route = '/courses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('كورسات استلر'),
      ),
      body: Container(
        child: Text('الكورسات'),
      ),
    );
  }
}
