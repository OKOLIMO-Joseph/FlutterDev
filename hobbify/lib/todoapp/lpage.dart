import 'package:flutter/material.dart';

class todolpage extends StatelessWidget {
  const todolpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 300,
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(30)
                ),
        
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'HOBB!FY',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          ),
                          ),
                      ),

                      Icon(
                        Icons.list_outlined,
                        color: Colors.white,
                        size: 200,
                        ),

                        SizedBox(height: 90,),

                        Text(
                          'Lets Get It Done With HOBB!FY',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          ),

                          SizedBox(height: 7,),

                          Container(
                child: Text(
                  'Deisgned by iamJOSEPHH',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                  ),
              ),
                    ],
                  ),
                ),
              ),
              
              
            ),
        
            SizedBox(
              height: 50,
            ),
        
        
            // Container(
            //  decoration: BoxDecoration(
            //   color: Colors.blue[500],
            //   borderRadius: BorderRadius.circular(30)
            //  ),
            //  width: 200,
            //  height: 50,
            //  child: Center(child: Text(
            //   'Get Started', 
            //   style: TextStyle(
            //     fontSize: 20,
            //     color: Colors.white,
            //     fontWeight: FontWeight.bold
            //   ),
            //  ),
            //  ),
             
            // )
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/hompg');
              }, 
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[400])),
              ),
              
          ],
        ),
      ),

    );
  }
}