import 'dart:developer';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/screens/screens.dart';

class StorageServices {
  var storageRef = FirebaseStorage.instance.ref();
  Future<void> uploadTutorImg({
    required File imageFile,
    required BuildContext context
    }) async {
    var imgRef = storageRef.child('Tutor/${DateTime.now().millisecondsSinceEpoch}.jpg');
    await imgRef.putFile(imageFile).then((onValue) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:
        Text('Image Added')
        ));
    },
    ).catchError((onError){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:
        Text("Error: $onError")
        ));
    });
  }
}
