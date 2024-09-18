import 'package:flutter/material.dart';
import 'package:flutter_app/home_screen.dart';
import 'package:flutter_app/methods.dart';

class user_data extends StatelessWidget {
  user_data({super.key});
  TextEditingController name = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [SizedBox(
            height: 20,
            ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: name,
              onFieldSubmitted: (value) {
                print(value.toString());
              },
              validator: (value) {
                if(value!.isEmpty || value == null){
                  return "Field Can't Be Empty";
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.brown)
                ),
                enabledBorder: OutlineInputBorder()
              ),
              
            ),
          ),
          SizedBox(
            height: 30,
            ),
          ElevatedButton(
            onPressed: (){
            if(formkey.currentState!.validate()){
              goto(context: context, screen: Homescreen());
            }
          },
          child: Text("Pass Data"),)
        ]),
      )
    );
  }
}