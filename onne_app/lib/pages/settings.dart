import 'package:flutter/material.dart';
import 'package:onne_app/pages/calls.dart';
import 'package:onne_app/pages/groups.dart';
import 'package:onne_app/pages/home_page.dart';
class Settings extends StatefulWidget {
   Settings ({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
   //keep track of current page displayed
   int selectedindex = 0;

   //method that updates the new selected index
   void navigateBottomBar(int index){
    setState(() {
      selectedindex = index;
    });
   }

   final List pages= [
    //Homepage
    Homepage(),

    //Groups
    Groups(),

    //Calls
    Calls(),

   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],

      appBar: AppBar(
        title: Text('Settings - Onne_App'),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: navigateBottomBar,
        items: [
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
          icon: Icon(Icons.call),
          label: 'Calls'
          ),
      ],),
    );
  }
}