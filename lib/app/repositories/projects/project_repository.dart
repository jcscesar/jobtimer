import 'package:job_timercs/app/core/infra/entities/project.dart';

abstract class ProjectRepository {
  Future<void> register(Project project);
}
