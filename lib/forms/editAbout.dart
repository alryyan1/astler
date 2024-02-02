import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class EditAbout extends StatefulWidget {
  EditAbout({super.key});
  static const route = '/editAbout';

  @override
  State<EditAbout> createState() => _EditAboutState();
}

class _EditAboutState extends State<EditAbout> {
  bool loading = false;
  String about = '';
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore.instance
        .collection('about')
        .doc('hT17WXukv8Hzt6IUa7DK')
        .get()
        .then((qshot) {
          if (this.mounted) {
                setState(() {
        print('ssssssssssssssssssss');
        about = qshot.data()!['about'];
        controller.text = about;
      });
          }
  
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('حول أستلر'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('حول أستلر'),
            TextFormField(
              style: TextStyle(color: Colors.black),
              controller: controller,
              minLines: 8,
              maxLines: 15,
              decoration: InputDecoration(filled: true),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      loading = true;
                    });
                    FirebaseFirestore.instance
                        .collection('about')
                        .doc('hT17WXukv8Hzt6IUa7DK')
                        .set({'about': about}).then((value) {
                      setState(() {
                        loading = false;
                      });
                      Get.snackbar('نجاح', 'تم التعديل بنجاح');
                    });
                  },
                  child: loading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : Text('حفظ')),
            )
          ],
        ),
      ),
    );
  }
}
