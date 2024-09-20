import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onne_app/pages/login.dart';
import 'package:onne_app/pages/signup.dart';

class crops extends StatelessWidget {
  const crops({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 105, 189, 10),),
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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 138, 230, 146),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Feedback from our subscribers',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Column(

                            children: [
                              
                              Icon(Icons.person),
                              Text('Peace N.'),
                            ],
                           ),
                        
                           Row(
                            children: [
                           Flexible(child: Text('Agroransom was a turning point for me')),
                           Icon(Icons.star_border_outlined),
                           Icon(Icons.star_border_outlined),
                           Icon(Icons.star_border_outlined),
                           Icon(Icons.star_border_outlined),
                           Icon(Icons.star_border_outlined),
                            ],
                           )
                        
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey[700],),

                      Column(
                        children: [
                          Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Column(

                            children: [
                              
                              Icon(Icons.person),
                              Text('Okolimo J.'),
                            ],
                           ),
                        
                           Row(
                            children: [
                           Flexible(child: Text('AgroRansom was a turning point for me')),
                           Icon(Icons.star_border_outlined),
                           Icon(Icons.star_border_outlined),
                           Icon(Icons.star_border_outlined),
                           Icon(Icons.star_border_outlined),
                           Icon(Icons.star_border_outlined),
                            ],
                           )
                        
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey[700],),
  
                  ],     
                      )
                  ],
                  
                ),
              ),
            ),
          ),

          // buttons

          //login
          
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
            },

              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        ),
                    ),
                  ),
              
              
                  //sign up
              
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
              },
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green[400],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  
                                ),
                                ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}