import 'package:flutter/material.dart';
import 'package:flutter_application/Services/subject_Model.dart';
import 'package:flutter_application/screens/screens.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Sections",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                    height: 50,
                  ),
                Text("Welcome, Tutor!",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text("Please choose a program to teach!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),),
                    SizedBox(
                      height: 50,
                    ),
                  SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.white),
                              ),
                        onPressed: () {
                          goto(context: context, screen: TutorPortal());
                        },
                        child: Text(
                          "Prep",
                          style: TextStyle(
                            color:  Colors.orange,
                            fontSize: 25,
                          ),
                        ),
                      ),
                ),
                SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.white),
                              ),
                        onPressed: () {
                          goto(context: context, screen: TutorPortal());
                        },
                        child: Text(
                          "Computer",
                          style: TextStyle(
                            color:  Colors.orange,
                            fontSize: 25,
                          ),
                        ),
                      ),
                ),
                SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.white),
                              ),
                        onPressed: () {
                          goto(context: context, screen: TutorPortal());
                        },
                        child: Text(
                          "Mechatronics",
                          style: TextStyle(
                            color:  Colors.orange,
                            fontSize: 25,
                          ),
                        ),
                      ),
                ),
                SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.white),
                              ),
                        onPressed: () {
                          goto(context: context, screen: TutorPortal());
                        },
                        child: Text(
                          "Civil",
                          style: TextStyle(
                            color:  Colors.orange,
                            fontSize: 25,
                          ),
                        ),
                      ),
                ),
          ],
        ),
      ),
    );
  }
}