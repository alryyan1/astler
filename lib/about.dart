import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});
  static const route = '/about';

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  String about = '';
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore.instance
        .collection('about')
        .doc('hT17WXukv8Hzt6IUa7DK')
        .get()
        .then((qshot) {
          if (this.mounted) {
             setState(() {
        about = qshot.data()!['about'];
      });
          }
     
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('عن أستلر'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 10,
                color: Colors.blue[100] as Color),
            BoxShadow(
                offset: Offset(-4, -4),
                blurRadius: 10,
                color: Colors.blue[700] as Color)
          ], color: Colors.blue[500], borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Hero(
                tag: 'عن أستلر',
                child: Image.asset('assets/images/logo.png'),
              ),
              Text(about)
            ],
          ),
        ),
      ),
    );
  }
}
