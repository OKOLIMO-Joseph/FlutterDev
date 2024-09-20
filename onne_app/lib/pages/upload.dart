import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onne_app/pages/f_upload.dart';

class upload extends StatelessWidget {
  const upload({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Product'),
      ),

      body: Stack(
        fit: StackFit.loose,
        children: [
          Column(
          children: [
            Center(child: Text(
              'Thank you.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              )),
        
              Center(child: Text(
              'Lets do the marketing for you!',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
              )),
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Crop Name:',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                         decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          hintText: 'Enter the name of your crop',
                          hintStyle: TextStyle(
                            color: Colors.grey[400]
                          )
                         ),
                      ),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Estimated Quantity:',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                         decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          hintText: '... Kgs',
                          hintStyle: TextStyle(
                            color: Colors.grey[400]
                          )
                         ),
                      ),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Tel Number:',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                         decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          hintText: '07********',
                          hintStyle: TextStyle(
                            color: Colors.grey[400]
                          )
                         ),
                      ),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Proposed Price:',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                         decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          hintText: '1Kg @ ... UgX',
                          hintStyle: TextStyle(
                            color: Colors.grey[400]
                          )
                         ),
                      ),
                    ),
                  ],
                ),
                
              ),
            ),
          ],
        ),

        Positioned(
          right: 10,
          left: 10,
          bottom: 10,
          child: Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(50),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Image.asset(
                'assets/farmer.jpg',
                height: 200,
                width: 200,
                ),
            ),
          ),
        ),

        Positioned(
          right: 10,
          left: 10,
          bottom: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => thankie()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                              
                    ),
                  ),
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