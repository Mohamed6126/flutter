import 'package:flutter/material.dart';
import 'package:flutter_app/contacts.dart';
import 'package:flutter_app/methods.dart';
import 'package:flutter_app/screens.dart';

class Homescreen extends StatelessWidget{
  Homescreen({super.key});
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
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("My New App"),
      leading: const Icon(Icons.backpack),
      actions: [
        IconButton(
          onPressed: (){
            print("Icon was pressed");
          },
          icon: const Icon(Icons.settings))
      ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image(
                        image: AssetImage('assets/wallpaperflare.com_wallpaper (18).jpg'),
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,),                        
                    ),
                  SizedBox(
                  height: 20,
                    ),
                    Text('Mahmoud',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.blue,),
                          ),
                          onPressed: (){
                            goto(context: context, screen: ContactsScreen(name: 'Mahmoud',));
                        }, 
                        child: Text("Change Name",style:TextStyle(color:Colors.white) )),
                  SizedBox(
                  height: 20,
                    ),
                  ListView.separated(
                    itemBuilder: (context, index) {
                          return Center(
                            child: Text(names[index]),                          
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 30,
                        ),
                        itemCount: names.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        primary: false,
                        )
                ],
              ),
            ),
        ),
        
      );
  }
  }
