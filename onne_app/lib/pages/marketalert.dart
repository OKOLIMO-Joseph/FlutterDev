import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onne_app/pages/t-portmnz.dart';

class m_alert extends StatelessWidget {
  const m_alert({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
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
                              Icons.message_rounded,
                              size: 50,
                              ),
                          ),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Boom!!!',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Hello client, we are here to inform you that we have found market for your products.',
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

                      SizedBox(height: 10,),


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Please prepare your goods for delivery',
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

          SizedBox(height: 50,),

          GestureDetector(
            onTap: (){
              Navigator.push((context), MaterialPageRoute(builder: (context) => t_port()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[500],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(55, 8, 55, 8),
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}