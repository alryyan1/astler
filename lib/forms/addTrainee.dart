import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:path/path.dart';

class AddTrainee extends StatefulWidget {
  AddTrainee({super.key});
  static const route = '/addtrainee';

  @override
  State<AddTrainee> createState() => _AddTraineeState();
}

class _AddTraineeState extends State<AddTrainee> {
  bool loading = false;
  var formkey = GlobalKey<FormState>();
  File? image;
  var nameController = TextEditingController();
  var abilitiesController = TextEditingController();
  var abilityNode = FocusNode();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    abilitiesController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اضافه مدرب'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'الحقل فاضي';
                  }
                },
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(abilityNode);
                },
                controller: nameController,
                decoration: InputDecoration(
                  label: Text('الاسم'),
                ),
              ),
              TextFormField(
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'الحقل فاضي';
                  }
                },
                minLines: 3,
                maxLines: 6,
                focusNode: abilityNode,
                controller: abilitiesController,
                decoration: InputDecoration(
                  label: Text('المؤهلات'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(),
                child: this.image == null
                    ? Placeholder()
                    : Image.file(fit: BoxFit.contain, this.image!),
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  child: Text('اختيار صوره'),
                  onPressed: () async {
                    try {
                      final pickedImage = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      if (pickedImage == null) {
                        return;
                      }
                      setState(() {
                        this.image = File(pickedImage.path);
                      });
                    } on PlatformException catch (e) {
                      Get.snackbar('Error', e.message as String);
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        setState(() {
                          loading = true;
                        });
                        String downloadUrl = await uplaodFile();

                        await FirebaseFirestore.instance
                            .collection('trainees')
                            .add({
                          "name": nameController.text,
                          "ability": abilitiesController.text,
                          "url": downloadUrl
                        }).then((value) {
                          setState(() {
                            loading = false;
                            nameController.clear();
                            abilitiesController.clear();
                            image = null;
                            Get.snackbar('نجاح', '');
                          });
                        });
                      }
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
      ),
    );
  }

  Future<String> uplaodFile() async {
    var downloadUrl = '';
    try {
      var filename = basename(this.image!.path);
      var ref = FirebaseStorage.instance.ref();
      final imagesRef = ref.child('images/${filename}');

      imagesRef.putFile(this.image as File);
      downloadUrl = await imagesRef.getDownloadURL();
    } on FirebaseException catch (e) {
      Get.snackbar('Error', e.message as String);
    }
    return downloadUrl;
  }
}
