import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Services/storage_services.dart';
import 'screens.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
class PickImg extends StatefulWidget {
  PickImg({super.key});

  @override
  State<PickImg> createState() => _PickImgState();
}

class _PickImgState extends State<PickImg> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Pick an Image',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageFile==null?SizedBox()
            :CircleAvatar(
              backgroundImage: FileImage(imageFile!),
              radius: 100,),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () async {
                var imagePicker = ImagePicker();
                var pickedImage = await imagePicker.pickImage(
                  source: ImageSource.gallery
                );
                if (pickedImage==null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                      "No Image was added",
                    ))
                  );
                }else{
                  setState(() {
                    imageFile = File(pickedImage.path);
                  });
                  StorageServices().uploadTutorImg(imageFile: imageFile!, context: context);
                }
              },
              label: Text('Pick an Image'),
              icon: Icon(Icons.image),
            )
          ],
        ),
      ),
    );
  }
}
