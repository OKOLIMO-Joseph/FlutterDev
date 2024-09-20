import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onne_app/pages/upload.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

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

          SizedBox(height: 10,),

          //form
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green[600],
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Welcome back to AgroRansom',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        ),
                    ),
                      
                      //name
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          ),
                      ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusColor: Colors.grey[600],
                            hintText: 
                            'myemail@gmail.com',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                            )
                          ),
                        ),
            
                         //name
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          ),
                      ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusColor: Colors.grey[600],
                            hintText: 
                            '***********',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                            )
                          ),
                        ),
            
            
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => upload()));
            },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[350],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Center(
                                        child: Text('Login',
                                        style: TextStyle(
                                          color: Colors.green[400],
                                          fontSize: 20,
                                        ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
            
            
            
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}