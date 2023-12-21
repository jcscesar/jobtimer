import 'package:isar/isar.dart';
import 'package:job_timercs/app/core/infra/entities/project_status.dart';
import 'package:job_timercs/app/view_models/project_tasks_model.dart';

class ProjectViewModel {
  final Id? id;
  final String name;
  final int estimate;
  final ProjectStatus status;
  final List<ProjectTasksModel> tasks;

  ProjectViewModel({
    this.id,
    required this.name,
    required this.estimate,
    required this.status,
    required this.tasks,
  });
}
