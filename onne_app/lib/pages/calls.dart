import 'package:flutter/material.dart';
class Calls extends StatefulWidget {
   Calls ({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
   //variable
   int counter=0;

   //method
   void increment(){
    setState(() {
      counter++;
    });
   }

   //ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],

      appBar: AppBar(
        title: Text('Calls - Onne_App'),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
          ),

          //For Groups
          BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: 'Groups'
          ),

          //For Calls
          BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings'
          ),
      ],),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Below is the number of times you have pressed the button'),
            Text(counter.toString(),
            style: TextStyle(
              fontSize: 50,
            ),
            ),
        
            //Button
            ElevatedButton.icon(onPressed: increment, icon: Icon(Icons.add), label: Text('Click To Increment'),),
          ],
        ),
      ),
    );
  }
}