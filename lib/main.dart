import 'package:flutter/material.dart';
import 'features/task_managment/screens/task_home_screen.dart';

void main() {
  runApp(TaskTrackerApp());
}

class TaskTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Tracker',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: TaskHomeScreen(),
    );
  }
}
