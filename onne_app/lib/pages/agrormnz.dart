import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:onne_app/pages/marketalert.dart';
import 'package:onne_app/pages/tcview.dart';
import 'package:url_launcher/url_launcher.dart';

class agromeans extends StatelessWidget {
  const agromeans({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text('Hire AgroRansom means'),
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
                              Icons.currency_exchange_rounded,
                              size: 50,
                              ),
                          ),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('DELIVERY COMMISSION',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                        ),
                      ),
                      
                      InkWell(
                        child: Text('MTN Momo Pay'),
                        onTap: () => launch('https://www.mtn.co.ug/helppersonal/momopay/#:~:text=To%20pay%20for%20services%20a,option%208%20to%20View%20ID.'),
                      ),

                      // SizedBox(height: 50,),


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Thank you!',
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
              Navigator.push((context), MaterialPageRoute(builder: (context) => tc_view()));
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