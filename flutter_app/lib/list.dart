import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});
  List<String> names = ['Ahmed'
  ,'Mahmoud',
  'Omar',
  'Saeed',
  'Assem',
  'Aser',
  'Belal'
  ,'Mahmoud',
  'Omar',
  'Saeed',
  'Assem',
  'Aser',
  'Belal'
  ,'Mahmoud',
  'Omar',
  'Saeed',
  'Assem',
  'Aser',
  'Belal'
  ,'Mahmoud',
  'Omar',
  'Saeed',
  'Assem',
  'Aser',
  'Belal'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Center(child: Text(names[index]),
        
        
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 20,
      ),
      itemCount: names.length,
      )
    );
  }
}