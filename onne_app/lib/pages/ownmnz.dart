import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onne_app/pages/marketalert.dart';

class own_means extends StatelessWidget {
  const own_means({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text('You have chosen to transport your products by yourself'),
      ),
      

      body: Column(
        children: [
          Center(
            child: Container(
              child: Image.asset(
                'assets/arlogo.png',
                width: 150,
                ),
            ),
          ),

          Text(
            'AgroRansom',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 105, 189, 10),
            ),
          ),

          // SizedBox(height: 180),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.notification_important,
                              size: 50,
                              ),
                          ),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Thank you for choosing to transport your goods by your own.',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                        ),
                      ),
                      // Text('We shall get back to you after contacting your market.',
                      //   style: TextStyle(
                      //   fontSize: 25,
                      //   color: Colors.white,
                      // ),
                      // ),

                      SizedBox(height: 20,),


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('We shall send you the contact of the buyer shortly.',
                          style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 70,),

          GestureDetector(
            onTap: (){
              Navigator.push((context), MaterialPageRoute(builder: (context) => m_alert()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[500],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(55, 8, 55, 8),
                child: Text(
                  'Refresh',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  ),
              ),
            ),
          )
        ],
      ),
    );
  }
}