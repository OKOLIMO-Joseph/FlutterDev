import 'package:flutter/material.dart';
import 'package:myfirst_flutter_app/todoapp/mybutton.dart';

class dialogbox extends StatelessWidget {

  //method for the controller
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


   dialogbox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[100],
      content: Container(
        width: 100,
        height: 180,
        // color: Colors.white,
        child: Column(
          children: [
            //get input from users
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), 
                  hintText: 'Add your new task',
                  ),
              ),
            ),

            SizedBox(height: 30,),

            //save and cancel buttons
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                //save button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: myButton(text: 'Save', onPressed: onSave),
              ),

              //cancel button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: myButton(text: 'Cancel', onPressed: onCancel),
              )
              ],
              
            )

          ],
        ),
      ),
    );
  }
}