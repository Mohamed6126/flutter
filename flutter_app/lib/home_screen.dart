import 'package:flutter/material.dart';
import 'package:flutter_application/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> names = [
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('My new app',
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold)),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                ),
                Text(
                  'Welcome to the Educational App!',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    goto(context: context, screen: StudentPortal());
                  },
                  child: Text(
                    "I'm a student",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    goto(context: context, screen: TutorPortal());
                  },
                  child: Text(
                    "I'm a Tutor",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                /*ListView.separated(
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                        names[index],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
                  itemCount: names.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  primary: false,
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
