import 'package:flutter/material.dart';
class Groups extends StatefulWidget {
   Groups ({Key? key}) : super(key: key);

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
   double width = 100;
   double height = 100;

   void expandBox(){
    setState(() {
      width = 250;
      height = 250;
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],

      appBar: AppBar(
        title: Text('Groups - Onne_App'),
      ),

      body: Center(
        child: GestureDetector(
          onTap: expandBox,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              shape: BoxShape.circle,
            ),
            width: 150,
            height: 150,
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
          ),

          //For Groups
          BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings'
          ),

          //For Calls
          BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'Calls'
          ),
      ],),
    );
  }
}