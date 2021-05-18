import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_application/page/home_page.dart';
import 'package:todo_application/provider/todos.dart';

//import 'package:flutter/src/foundation/change_notifier.dart';

//import 'package:provider/src/change_notifier_provider.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Todo App';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodosProvider>(
      create: (context) => TodosProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          scaffoldBackgroundColor: Colors.grey[400],
        ),
        home: HomePage(),
      ),
    );
  }
}
