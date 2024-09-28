import 'package:flutter/material.dart';
import 'package:flutter_application/screens/screens.dart';
class SubjectCard extends StatelessWidget {
  const SubjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text("Welcome, Student!",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),),
              Text("Please choose a subject to study!",
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
                        goto(context: context, screen: StudentPortal());
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
                        goto(context: context, screen: StudentPortal());
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
                      onPressed: () {
                        goto(context: context, screen: StudentPortal());
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
                      onPressed: () {
                        goto(context: context, screen: StudentPortal());
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
                      onPressed: () {
                        goto(context: context, screen: StudentPortal());
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
                      onPressed: () {
                        goto(context: context, screen: StudentPortal());
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
                      onPressed: () {
                        goto(context: context, screen: StudentPortal());
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
                      onPressed: () {
                        goto(context: context, screen: StudentPortal());
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
              
            ],
          ),
        ),
    );
  }
}