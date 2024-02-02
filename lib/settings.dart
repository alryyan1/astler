import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './forms/addcoruse.dart';
import './forms/addTrainee.dart';
import 'about.dart';
import 'forms/editAbout.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  static const route = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاعدادات'),
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue[300] as Color, Colors.blue])),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              NewSetting(
                name: 'اضافه كورس',
                page: AddCourse.route,
              ),
              NewSetting(
                name: 'اضافه مدرب',
                page: AddTrainee.route,
              ),
              NewSetting(
                name: 'حول أستلر',
                page: EditAbout.route,
              ),
            ],
          )),
    );
  }
}

class NewSetting extends StatelessWidget {
  final String name;
  final String page;
  const NewSetting({
    required this.page,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(page);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        alignment: Alignment(0, 0),
        width: 200,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 10,
                color: Colors.blue[100] as Color),
            BoxShadow(
                offset: Offset(-4, -4),
                blurRadius: 10,
                color: Colors.blue[700] as Color)
          ],
          color: Colors.blue[500],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(
          this.name,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
