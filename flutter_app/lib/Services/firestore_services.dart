import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Services/Subject_Model.dart';
import 'package:flutter_application/screens/sections.dart';
import 'Section_Model.dart';
class FirestoreServices {
  var ref = FirebaseFirestore.instance.collection('subjects');
  void createSubjects({
    required String Title,
  required String description,
  required BuildContext context})
  async{
    var subjectref= ref.doc();
    Subject subject = Subject(
      Title: Title,
      Description: description,
      uid: subjectref.id
    );
    await subjectref.set(
      subject.toMap(),
    ).then((onValue){
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content: Text('Subject Added Successfully!'),
          actions: [
            TextButton(
              onPressed: (){},
              child: Text("OK"))
          ],
        );
      });
    }).catchError((onError){
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content: Text('Subject Added Successfully!'),
          actions: [
            TextButton(
              onPressed: (){},
              child: Text("OK"))
          ],
        );
      });
    });
  }


  Future<List<Subject>> getAllSubjects()async{
    var getAllSubjects = await ref.get();
    var subjectsData = getAllSubjects.docs.map((Subject)=>Subject.data());
    var subjectObjects = subjectsData.map((subjectMap)=> Subject().fromMap(subjectMap));
    var subjectsList = subjectObjects.toList();
    return subjectsList;
  }
  Future<List<Sections>> getAllSections()async{
    var getAllSections = await ref.get();
    var sectionData = getAllSections.docs.map((Sections)=>Sections.data());
    var sectionsObjects = sectionData.map((sectionsMap)=> Section().fromMap(sectionsMap));
    var subjectsList = Section.toList();
    return subjectsList;
  }
}