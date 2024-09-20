import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:lottie/lottie.dart';
import 'package:onne_app/pages/crop.dart';
// import 'package:onne_app/pages/crop.dart';

class animhmpg extends StatelessWidget {
  const animhmpg({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 90,),


          Center(
            // child: Lottie.network('https://lottie.host/d6801acf-ab9a-4dcc-9a85-86534b9feaaf/LtxH7198Ov.json'),
            child: Image.asset('assets/homie.jpg'),
          ),

          Text(
            'Welcome to AgroRansom',
            style: TextStyle(
              fontSize: 26,
              color: Color.fromARGB(255, 105, 189, 10),
            ),
          ),

                    Text(
            'Your marketing solution',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 105, 189, 10),
            ),
          ),

          SizedBox(
            height: 80,
          ),

          GestureDetector(
            onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => crops()));
            },

            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 105, 189, 10),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                  ),
              ),
            ),
          )
        ],
      )
    );
  }
}