import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
   calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  //number and their variables and their functions as well
  int init = 0;

  void zero(){
    setState(() {
      init=0;
    });
  }

  void one(){
    setState(() {
      init=1;
    });
  }
    void two(){
    setState(() {
      init=2;
    });
  }

  void three(){
    setState(() {
      init=3;
    });
  }
    void four(){
    setState(() {
      init=4;
    });
  }

  void five(){
    setState(() {
      init=5;
    });
  }
    void six(){
    setState(() {
      init=6;
    });
  }

  void seven(){
    setState(() {
      init=7;
    });
  }
    void eight(){
    setState(() {
      init=8;
    });
  }

  void nine(){
    setState(() {
      init=9;
    });
  }

  void add(){
    setState(() {
      init+init;
    });
  }
  void minus(){
    setState(() {
      init-init;
    });
  }
  void pdt(){
    setState(() {
      init*init;
    });
  }
  void quotient(){
    setState(() {
      init/init;
    });
  }
  void equals(){
    setState(() {
      init=init;
    });
  }
  void reset(){
    setState(() {
      init=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Container(
            width: 400,
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200]
            ),
            child: Column(
              children: [
                Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(40)
                  ),
                  
                  child: Center(
                    child: Text(
                      init.toString(),
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.grey[1000],
                      ),
                    ),
                  ),
                ),

                Divider(color: Colors.grey[900],),
                SizedBox(height: 20,),

                //ElevatedButton(onPressed: zero, child: Text('0'),),
                Container(
          //         child: GridView.builder(
          // itemCount: 8,
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
          // itemBuilder: (context, index) => Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: zero, child: Text('0', style: TextStyle(fontSize: 35),),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: one, child: Text('1', style: TextStyle(fontSize: 35),),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: two, child: Text('2', style: TextStyle(fontSize: 35),),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: three, child: Text('3', style: TextStyle(fontSize: 35),),),
                      ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: four, child: Text('4', style: TextStyle(fontSize: 35),), ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: five, child: Text('5', style: TextStyle(fontSize: 35),),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: six, child: Text('6', style: TextStyle(fontSize: 35),),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: seven, child: Text('7', style: TextStyle(fontSize: 35),),),
                      ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: eight, child: Text('8', style: TextStyle(fontSize: 35),),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: nine, child: Text('9', style: TextStyle(fontSize: 35),),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: add, child: Text('+', style: TextStyle(fontSize: 35, color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[500])),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: minus, child: Text('-', style: TextStyle(fontSize: 35, color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[500])),),
                      ),
                        ],
                      ),
                      
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: pdt, child: Text('*', style: TextStyle(fontSize: 35, color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[500])),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: quotient, child: Text('/', style: TextStyle(fontSize: 35, color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[500])),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: equals, child: Text('=', style: TextStyle(fontSize: 35, color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange[500])),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: reset, child: Text('x', style: TextStyle(fontSize: 35, color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red[500])),),
                      ),
                        ],
                      ),
                      
                    ),
                  ],
                ),
              ),
            ),
            // // color: Colors.pink[500],
            // margin: EdgeInsets.all(4),)
            //     ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}