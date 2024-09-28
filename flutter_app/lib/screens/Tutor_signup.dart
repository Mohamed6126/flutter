import 'package:flutter/material.dart';
import 'package:flutter_application/screens/Tutor_signin.dart';
import 'package:flutter_application/screens/pick_img.dart';
import 'package:flutter_application/screens/screens.dart';

class TutorSignup extends StatelessWidget {
  TutorSignup({super.key});
  var name = TextEditingController();
  var email = TextEditingController();
  var pass = TextEditingController();
  var confirmpass = TextEditingController();
  var phoneNumber = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var emailnode = FocusNode();
  var passnode = FocusNode();
  var passConfirmNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Sign Up"),
        ),
        body: SingleChildScrollView(
          child: Form(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              key: formKey,
              children: [
                SizedBox(
                  height:100
                ),
                TextFormField(
                      onFieldSubmitted: (value){
                        FocusScope.of(context).requestFocus(emailnode);
                      },
                      controller: name,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field Can't be Empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: Text("Name"),
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
                            color: Colors.amber,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Colors.amber,
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
                        FocusScope.of(context).requestFocus(passConfirmNode);
                      },
                      controller: phoneNumber,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field Can't be Empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: Text("Phone Number"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Colors.amber,
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Colors.amber,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Colors.amber,
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
                        FocusScope.of(context).requestFocus(passnode);
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
                        label: Text("E-mail"),
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
                            color: Colors.amber,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Colors.amber,
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
                        FocusScope.of(context).requestFocus(passConfirmNode);
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
                            color: Colors.amber,
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Colors.amber,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Colors.amber,
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
                      controller: confirmpass,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field Can't be Empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: Text("Confirm Password"),
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
                            color: Colors.amber,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Colors.amber,
                            width: 2,
                          )
                        )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton.icon(
                    onPressed: (){
                      goto(context: context, screen: PickImg());
                    },
                    label: Text('Upload an Image'),
                    icon: Icon(Icons.image),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                    onPressed: (){
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.amber)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("SignUp",style: TextStyle(fontSize: 30),),
                    ),
                    ),
                    SizedBox(height: 30,),
                    Text("Already have an account?"),
                    ElevatedButton(
                    onPressed: (){
                      goto(context: context, screen: TutorSigin());
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.amber)
                    ),
                    child: Text("SignIn"),
                    ),
                    
              ],
            ),
          )),
        )
    );
  }
}