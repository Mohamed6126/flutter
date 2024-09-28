import 'package:flutter/material.dart';

class TutorSigin extends StatelessWidget {
  TutorSigin({super.key});
    var formKey = GlobalKey<FormState>();
    var email = TextEditingController();
    var pass = TextEditingController();
    var passNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("SignIn"),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              key: formKey,
              children: [
                SizedBox(
                  height:100
                ),
                TextFormField(
                      onFieldSubmitted: (value){
                        FocusScope.of(context).requestFocus(passNode);
                      },
                      controller: email,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field Can't be Empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: Text("Email"),
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
                            color: Colors.green,
                            width: 2,
                          )
                        )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                TextFormField(
                      onFieldSubmitted: (value){
                        FocusScope.of(context).requestFocus();
                      },
                      controller: pass,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field Can't be Empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: Text("Password"),
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
                            color: Colors.green,
                            width: 2,
                          )
                        )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.green)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("SignIn",style: TextStyle(fontSize: 30,color: Colors.white),),
                    ),
                    )
              ],
            ),
          )),
      ),

    );
  }
}