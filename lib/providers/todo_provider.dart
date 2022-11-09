import 'package:flutter/material.dart';

class TodoClass extends ChangeNotifier {
  bool isDarkMode = false;
  changeIsDarkMode() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }

  bool isAccepted = false;
  changeIsAccepted() {
    isAccepted = !isAccepted;
    notifyListeners();
  }

  String name = "omar";
  int age = 10;
  bool isMale = true;
  changeName(String newName) {
    name = newName;
    notifyListeners();
  }
}
