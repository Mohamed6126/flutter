import 'package:flutter/material.dart';
import 'package:flutter_app/screens.dart';
class ContactsScreen extends StatelessWidget {
  ContactsScreen({super.key, required this.name});
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "Mahmoud",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
            height: 30,
            ),
              Center(
                child: Text('My Contacts Screen'),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              goto(context: context, screen: Homescreen());
            },
            child: Text('Go Back'),
          ),
        ],
      ),
    );
  }
}