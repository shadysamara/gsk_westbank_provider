import 'dart:convert';

import 'package:flutter/material.dart';

class TaskModel {
  int? id;
  String? title;
  bool? isComplete;
  TaskModel({
    this.id,
    this.title,
    this.isComplete,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isComplete': isComplete,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id']?.toInt(),
      title: map['title'],
      isComplete: map['isComplete'] == 1 ? true : false,
    );
  }
}
