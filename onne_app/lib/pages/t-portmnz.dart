import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onne_app/pages/agrormnz.dart';
import 'package:onne_app/pages/ownmnz.dart';
// import 'package:onne_app/pages/marketalert.dart';

class t_port extends StatelessWidget {
  const t_port({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text('Transportation'),
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
                              Icons.join_right_rounded,
                              size: 50,
                              ),
                          ),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('How would you want to transport your products? (Select One)',
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

                      SizedBox(height: 50,),


                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push((context), MaterialPageRoute(builder: (context) => own_means()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Use my own means',
                                style: TextStyle(
                                fontSize: 25,
                                color: Colors.green[500],
                              ),
                              ),
                            ),
                          ),
                        ),
                      ),
  
                      GestureDetector(
                        onTap: () {
                          Navigator.push((context), MaterialPageRoute(builder: (context) => agromeans()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Hire AgroRansom means',
                                style: TextStyle(
                                fontSize: 25,
                                color: Colors.green[500],
                              ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),

          // SizedBox(height: 70,),

          // GestureDetector(
          //   onTap: (){
          //     Navigator.push((context), MaterialPageRoute(builder: (context) => m_alert()));
          //   },
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20),
          //       color: Colors.green[500],
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.fromLTRB(55, 8, 55, 8),
          //       child: Text(
          //         'Verify',
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontWeight: FontWeight.bold,
          //           fontSize: 25,
          //         ),
          //         ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}