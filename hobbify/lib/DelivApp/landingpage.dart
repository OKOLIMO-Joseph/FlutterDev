import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myfirst_flutter_app/DelivApp/homepage.dart';

class lpage extends StatelessWidget {
  const lpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[90],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 20.0)),
            //logo
            Image.network(
              'https://cdn.pixabay.com/photo/2019/08/06/17/43/coffee-4388872_1280.png',
              width: 1500,
              height: 300,
              ),
              Divider(
                color: Colors.grey[800],
              ),


            //title
            Text(
              'Taste of Nature in the Comfort of your Glass',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),

              ),

              SizedBox(height: 20,),

            //sub-title
            Text(
              ' We bring the drinks directly to your doorstep, saving you time and effort. No need to visit a store or carry heavy bottles!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[600]
              ),
            ),

            SizedBox(height: 100,),
            //button
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()),),
              

              child: Container(
                
                decoration: BoxDecoration(
                   color: Colors.black,
                   borderRadius: BorderRadius.circular(40),
                ),
                width: 400,
                height: 100,
                child: Center(
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                    ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}