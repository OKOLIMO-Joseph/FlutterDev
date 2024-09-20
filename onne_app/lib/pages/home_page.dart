import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Homepage extends StatelessWidget {
  Homepage ({Key? key}) : super(key: key);
  // List langgs = ['React', 'Python', 'HTML', 'Flutter', 'Laravel', 'MySQL', 'C++', 'C-Language'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text('Home - Onne_App'),
      ),
      
        drawer: Drawer(
          backgroundColor: Colors.amber[400],
          child: Column(children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 100, color: Colors.white,)),

            ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            
            onTap: (){
             
                //  navigate to home page
              Navigator.pushNamed(context, '/homepage');
            },
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
               
              Navigator.pushNamed(context, '/settings');
              // pop the drawer first
              // Navigator.pop(context);
            },
          ),

          ListTile(
            leading: Icon(Icons.group),
            title: Text('Groups'),
            onTap: () {
              Navigator.pushNamed(context, '/groups');
            },
          ),

          ListTile(
            leading: Icon(Icons.call),
            title: Text('Calls'),
            onTap: (){
              Navigator.pushNamed(context, '/calls');
            },
          ),
          ],),
          
        ),

        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 650,
              width: 350,
              
              decoration: BoxDecoration(
                color: Colors.purple[900],
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            Container(
              height: 550,
              width: 300,
              
              decoration: BoxDecoration(
                color: Colors.purple[700],
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            Container(
              height: 450,
              width: 250,
              // color: Colors.purple[500],
              decoration: BoxDecoration(
                color: Colors.purple[500],
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            Container(
              height: 350,
              width: 200,
              // color: Colors.purple[300],
              decoration: BoxDecoration(
                color: Colors.purple[300],
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            Container(
              height: 250,
              width: 150,
              // color: Colors.purple[100],
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            Container(
              height: 150,
              width: 100,
              // color: Colors.purple[0],
              decoration: BoxDecoration(
                color: Colors.purple[0],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            
          ],
        )


        // body: GridView.builder(
        //   itemCount: 64,
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
        //   itemBuilder: (context, index) => Container(
        //     color: Colors.pink[500],
        //     margin: EdgeInsets.all(10),
        //   )
        //   ),


        // body: ListView.builder(
        //   itemCount: langgs.length,
        //   itemBuilder: (context, index) => ListTile(
        //     title: Text(langgs[index]),
            
        //   )
        //   ),

      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     Container(
      //       height: 400,
      //       width: 355,
      //       decoration: BoxDecoration(
      //         color: Colors.amber[900],
      //       borderRadius: BorderRadius.circular(20),
      //       ),     
      //     ),
      //     SizedBox(width: 30,),

      //     Container(
      //       height: 400,
      //       width: 355,
      //       decoration: BoxDecoration(
      //         color: Colors.amber[600],
      //       borderRadius: BorderRadius.circular(20),
      //       ),     
      //     ),
      //     SizedBox(width: 30,),

      //     Container(
      //       height: 400,
      //       width: 355,
      //       decoration: BoxDecoration(
      //         color: Colors.amber[300],
      //       borderRadius: BorderRadius.circular(20),
      //       ),     
      //     ),
      //   ],
      // ),
      ),
    // ),
    );
  }
}