// import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class intropg extends StatelessWidget {
  const intropg({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Breakfxst',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          ),

          leading: Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.all(5),
            child: Icon(Icons.keyboard_arrow_left_outlined),
          ),

        centerTitle: true,
      ),
    );
  }
}