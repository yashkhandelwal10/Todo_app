//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/cupertino.dart';
//import 'package:provider/src/change_notifier_provider.dart';
//import 'package:provider/provider.dart';
import 'package:todo_application/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  final List<Todo> _todos = [
    Todo(createdTime: DateTime.now(), title: 'Buy Food', description: '''- Eggs
      - Milk
      - Bread
      - Water '''),
    Todo(
        createdTime: DateTime.now(),
        title: 'Do Trading',
        description: '''- Buying Stocks
      - Investing
      - Learning
      - Analysis '''),
  ];
  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
  List<Todo> get todosCompleted =>
      _todos.where((todo) => todo.isDone == true).toList();

  void addTodo(Todo todo) {
    _todos.add(todo);

    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _todos.remove(todo);

    notifyListeners();
  }

  bool toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();

    return todo.isDone;
  }

  void updateTodo(Todo todo, String title, String description) {
    todo.title = title;
    todo.description = description;

    notifyListeners();
  }
}
