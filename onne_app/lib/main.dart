import 'package:flutter/material.dart';
import 'package:onne_app/pages/anim.dart';
// import 'package:onne_app/pages/calls.dart';
// import 'package:onne_app/pages/groups.dart';
// import 'package:onne_app/pages/home_page.dart';
// import 'package:onne_app/pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homepage(),
      // routes: {
      //   '/homepage': (context) => Homepage(),
      //   '/settings': (context) => Settings(),
      //   '/calls': (context) => Calls(),
      //   '/groups': (context) => Groups(),
      // },
      
      home: animhmpg(),
    );
  }
}