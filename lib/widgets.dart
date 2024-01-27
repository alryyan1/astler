import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  String name;
  Header({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment(0, 0),
      width: 300,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(-3, 3),
              color: Color.fromARGB(255, 11, 41, 131),
              blurRadius: 2)
        ],
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 4, 136, 219),
          Color.fromARGB(255, 46, 39, 39)
        ]),
      ),
      child: FittedBox(
        child: Text(
          this.name,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
