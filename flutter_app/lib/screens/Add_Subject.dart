import 'package:flutter/material.dart';
import 'package:flutter_application/Services/firestore_services.dart';
import 'package:flutter_application/screens/screens.dart';

class AddSubject extends StatelessWidget {
  AddSubject({super.key});
  var subjectTitle = TextEditingController();
  var subjectDescription = TextEditingController();
  var descriptionNode = FocusNode();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Add Subject"),
        ),
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  onFieldSubmitted: (value){
                    FocusScope.of(context).requestFocus(descriptionNode);
                  },
                  controller: subjectTitle,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Title Can't be Empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text("Subject Title"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2,
                      )
                    )
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  maxLines: 5,
                  focusNode: descriptionNode,
                  controller: subjectDescription,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Description Can't be Empty";
                    }
                    return null;
                  },
                  decoration:
                  InputDecoration(
                    label: Text("Subject Description"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2,
                      )
                    )
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                            ),
                      onPressed: () {
                        
                      },
                      child: Text(
                        "Confirm Subject",
                        style: TextStyle(
                          color:  Colors.orange,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
              ],
            ),
          )),
      ),
    );
  }
}