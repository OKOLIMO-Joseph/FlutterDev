import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber[400],
        appBar: AppBar(
          title: Text('</....ph'),
          backgroundColor: Colors.amber[800],
          centerTitle: true,
        ),

        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 0, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/5952651/pexels-photo-5952651.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  radius: 60.0,
                ),
              ),
              Center(
                child: Divider(
                  height: 50.0,
                  color: Colors.grey[400],
                ),
              ),


              Text(
                'Name',
                style: TextStyle(
                  color: Colors.grey[500],
                  letterSpacing: 2.0,
                  fontSize: 20,
                ),
              ),

              Text(
                'Joseph_OKOLIMO',
                style: TextStyle(
                  color: Colors.grey[900],
                  letterSpacing: 4.0,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),

              Text(
                'Programming Level',
                style: TextStyle(
                  color: Colors.grey[500],
                  letterSpacing: 2.0,
                  fontSize: 20,
                ),
              ),

              Text(
                'Intermediate',
                style: TextStyle(
                  color: Colors.grey[900],
                  letterSpacing: 4.0,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),

              Text(
                'Email',
                style: TextStyle(
                  color: Colors.grey[500],
                  letterSpacing: 2.0,
                  fontSize: 20,
                ),
              ),

              Row(
                children: [
                  Icon(Icons.email),
                  Text(
                'okolimofficail@gmail.com',
                style: TextStyle(
                  color: Colors.grey[900],
                  letterSpacing: 4.0,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
              
                ],
              ),

              SizedBox(height: 130,),
              Center(
                child: FloatingActionButton(onPressed: () {}, 
                child: Icon(Icons.start)
                  
                ),
              )
              
            ],
          ),
          ),
      ),
    );
  }
}