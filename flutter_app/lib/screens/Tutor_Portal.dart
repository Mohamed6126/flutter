import 'package:flutter/material.dart';
import 'package:flutter_application/screens/screens.dart';
class TutorPortal extends StatelessWidget {
  const TutorPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Tutor",style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold),),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                    Text("Please choose a subject to teach!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),),
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
                          goto(context: context, screen: TutorSignup());
                        },
                        child: Text(
                          "Math",
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
                          goto(context: context, screen: TutorSignup());
                        },
                        child: Text(
                          "Science",
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
                        onPressed:(){
                          goto(context: context, screen: TutorSignup());
                                },
                        child: Text(
                          "English",
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
                        onPressed: ()  {
                          goto(context: context, screen: TutorSignup());
                        },
                        child: Text(
                          "French",
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
                        onPressed: ()  {
                          goto(context: context, screen: TutorSignup());
                        },
                        child: Text(
                          "Physics",
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
                        onPressed: ()  {
                          goto(context: context, screen: TutorSignup());
                        },
                        child: Text(
                          "Chemistry",
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
                        onPressed: ()  {
                          goto(context: context, screen: TutorSignup());
                        },
                        child: Text(
                          "Biology",
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
                        onPressed: ()  {
                          goto(context: context, screen: TutorSignup());
                        },
                        child: Text(
                          "Arabic",
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
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      child: Text("Your Subject isn't listed?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),)
                      ),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(onPressed: (){
                      goto(context: context, screen: AddSubject());
                    },
                    child: Text("Add Subject",style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.orange)
                    ),
                    )
                  ],),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}