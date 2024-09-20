import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myfirst_flutter_app/DelivApp/landingpage.dart';
import 'package:myfirst_flutter_app/todoapp/lpage.dart';
import 'package:myfirst_flutter_app/todohom.dart';
// import 'package:myfirst_flutter_app/DelivApp/landingpage.dart';
// import 'package:myfirst_flutter_app/calculator.dart';
// import 'package:myfirst_flutter_app/Pages/homepage.dart';

void main() async {
  //init hive
  await Hive.initFlutter();
  
  //open a box
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp  extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // home: lpage(),
      // home: calculator(),
      // home: hompg(),
      home: todolpage(),
      routes: {
        '/hompg':(context) => hompg(),
      },

      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}