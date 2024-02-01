import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCourse extends StatefulWidget {
  AddCourse({super.key});
  static const route = '/addcourse';

  @override
  State<AddCourse> createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  var form = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var priceController = TextEditingController();
  var stdCountController = TextEditingController();
  var priceNode = FocusNode();
  var stdNode = FocusNode();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    priceController.dispose();
    stdCountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اضافه كورس'),
      ),
      body: Form(
        key: form,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(priceNode);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'املأ الحقل';
                  }
                },
                decoration: InputDecoration(label: Text('اسم الكورس')),
                style: TextStyle(color: Colors.black),
              ),
              TextFormField(
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(stdNode);
                },
                keyboardType: TextInputType.number,
                focusNode: priceNode,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'املأ الحقل';
                  }
                },
                decoration: InputDecoration(label: Text('السعر')),
                style: TextStyle(color: Colors.black),
              ),
              TextFormField(
                onFieldSubmitted: (value) {},
                keyboardType: TextInputType.number,
                focusNode: stdNode,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'املأ الحقل';
                  }
                },
                decoration: InputDecoration(label: Text('عدد الطلبه')),
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
