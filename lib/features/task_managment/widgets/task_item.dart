import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final VoidCallback onDelete;
  final Function(TaskStatus) onStatusChange;

  const TaskItem({
    required this.task,
    required this.onDelete,
    required this.onStatusChange,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      child: ListTile(
        title: Text(task.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(task.description),
            SizedBox(height: 4),
            Text('Статус: ' + statusToString(task.status)),
          ],
        ),
        trailing: PopupMenuButton<String>(
          onSelected: (value) {
            if (value == 'delete') {
              onDelete();
            } else if (value == 'new') {
              onStatusChange(TaskStatus.newTask);
            } else if (value == 'inProgress') {
              onStatusChange(TaskStatus.inProgress);
            } else if (value == 'completed') {
              onStatusChange(TaskStatus.completed);
            }
          },
          itemBuilder: (context) => [
            PopupMenuItem(value: 'new', child: Text('Новая')),
            PopupMenuItem(value: 'inProgress', child: Text('В работе')),
            PopupMenuItem(value: 'completed', child: Text('Завершена')),
            PopupMenuItem(value: 'delete', child: Text('Удалить')),
          ],
        ),
      ),
    );
  }
}
