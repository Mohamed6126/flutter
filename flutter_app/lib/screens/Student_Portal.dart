import 'package:flutter/material.dart';
import 'package:flutter_application/Services/firestore_services.dart';
import 'package:flutter_application/Services/subject_Model.dart';
import 'package:flutter_application/screens/sections.dart';
import 'screens.dart';

class StudentPortal extends StatelessWidget {
  const StudentPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Student",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        );
}
}