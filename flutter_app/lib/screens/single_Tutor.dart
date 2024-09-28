import 'package:flutter/material.dart';
import 'package:flutter_application/screens/pick_img.dart';
import 'package:flutter_application/screens/screens.dart';

class SingleTutor extends StatelessWidget {
  const SingleTutor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Tutor Details",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 200,
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                Image.asset('assets/avatar.png'),
                ElevatedButton(onPressed: (){
                  goto(context: context, screen: PickImg());
                },
                style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.indigo)
                    ),
                child: Icon(Icons.chat,color: Colors.white,))
              ])),
              SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                Text("01204006126",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}