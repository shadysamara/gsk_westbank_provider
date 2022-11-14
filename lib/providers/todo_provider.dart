import 'package:flutter/material.dart';
import 'package:todo_db_provider/data_respository/db_helper.dart';
import 'package:todo_db_provider/models/task_model.dart';

class TodoClass extends ChangeNotifier {
  TodoClass() {
    getAllTasks();
  }
  bool isDarkMode = false;
  changeIsDarkMode() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }

  TextEditingController textEditingController = TextEditingController();

  List<TaskModel> allTasks = [];
  List<TaskModel> completeTasks = [];
  List<TaskModel> inCompleteTasks = [];
  getAllTasks() async {
    allTasks = await DbHelper.dbHelper.getAllTasks();
    completeTasks = allTasks.where((element) => element.isComplete!).toList();
    inCompleteTasks =
        allTasks.where((element) => !element.isComplete!).toList();
    notifyListeners();
  }

  insertNewTask() async {
    TaskModel taskModel =
        TaskModel(title: textEditingController.text, isComplete: false);
    textEditingController.clear();
    await DbHelper.dbHelper.insertNewTask(taskModel);
    getAllTasks();
  }

  deleteTask(TaskModel taskModel) async {
    await DbHelper.dbHelper.deleteTask(taskModel);
    getAllTasks();
  }

  updateTask(TaskModel taskModel) async {
    await DbHelper.dbHelper.updateTask(taskModel);
    getAllTasks();
  }
}
