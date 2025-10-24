enum TaskStatus { newTask, inProgress, completed }

class Task {
  String title;
  String description;
  TaskStatus status;

  Task({
    required this.title,
    required this.description,
    this.status = TaskStatus.newTask,
  });
}

String statusToString(TaskStatus status) {
  switch (status) {
    case TaskStatus.newTask:
      return 'Новая';
    case TaskStatus.inProgress:
      return 'В работе';
    case TaskStatus.completed:
      return 'Завершена';
  }
}
