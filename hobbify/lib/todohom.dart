import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myfirst_flutter_app/todoapp/database.dart';
import 'package:myfirst_flutter_app/todoapp/dialogbox.dart';
import 'package:myfirst_flutter_app/todoapp/todotile.dart';

class hompg extends StatefulWidget {
 hompg({Key? key}) : super(key: key);

  @override
  State<hompg> createState() => _hompgState();
}

class _hompgState extends State<hompg> {

  //reference hive box
  final _myBox = Hive.box('myBox');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {

    //first time launch
    if(_myBox.get('TODOLIST')==null){
      db.CreateInitialData();
    } else{
      //if there exists data already
      db.loadData();
    }
    // TODO: implement initState
    super.initState();
  }

  //text controller
   final _controller = TextEditingController();


  // List toDoList = [
  //   ['Do morning training', false],
  //   ['Do power gym', false],
  //   // ['Watch flutter tutorials'],
  //   // ['Take ma babe out', false]
  // ];

   //save new task
   void saveNewTask(){
    setState(() {
      db.toDoList.add([ _controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
   }

  //checkbox changed
  void checkBoxChanged(bool? value, int index){
      setState(() {
        db.toDoList[index][1] = !db.toDoList[index][1];
      });
      db.updateDataBase();
  }

  void createNewTask(){
    showDialog(
      context: context, 
      builder: (context){
        return dialogbox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
      );
  }

  //delete task
  void deleteTask(int index){
       setState(() {
         db.toDoList.removeAt(index);
       });
       db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Text('HOBB!FY', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        centerTitle: true,
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        // foregroundColor: Colors.blue[200],
        backgroundColor: Colors.blue[200],
        child: Icon(Icons.add),
        ),

      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
            return ToDoTile(
            taskName: db.toDoList[index][0], 
            taskCompleted: db.toDoList[index][1], 
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
            );
        },
      ),
    );
  }
} 