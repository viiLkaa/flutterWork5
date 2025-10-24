import 'package:flutter/material.dart';
import '../models/task.dart';
import '../widgets/task_item.dart';

class TaskListScreen extends StatelessWidget {
  final List<Task> tasks;
  final Function(Task, TaskStatus) onStatusChange;
  final Function(Task) onDelete;

  TaskListScreen({
    required this.tasks,
    required this.onStatusChange,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return Center(child: Text('Задачи не найдены'));
    }
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskItem(
          task: tasks[index],
          onDelete: () => onDelete(tasks[index]),
          onStatusChange: (newStatus) => onStatusChange(tasks[index], newStatus),
        );
      },
    );
  }
}
