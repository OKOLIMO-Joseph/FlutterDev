import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{

  List toDoList = [''];


  //reference the box
  final _myBox = Hive.box('mybox');

  //run this at first time launching
  void CreateInitialData(){
    toDoList = [
      ['Welcome to you Time Pal', false],
      ['Slide to left to delete', false],
    ];
  }

  //load data from db
  void loadData(){
    toDoList = _myBox.get('TODOLIST');
  }

  //update data on change
  void updateDataBase(){
    _myBox.put('TODOLIST', toDoList);
  }
}