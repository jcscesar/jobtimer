import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:job_timercs/app/core/exceptions/failure.dart';
import 'package:job_timercs/app/core/infra/database/database.dart';
import 'package:job_timercs/app/core/infra/entities/project.dart';

import './project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final Database _database;
  ProjectRepositoryImpl({required Database database}) : _database = database;

  @override
  Future<void> register(Project project) async {
    try {
      final connection = await _database.openConnection();
      await connection.writeTxn((isar) {
        return isar.projects.put(project);
      } as Future Function());
    } on IsarError catch (e, s) {
      const String message = 'Erro ao cadastrar projecto';
      log(message, error: e, stackTrace: s);
      throw Failure(messsasge: message);
    }
  }
}
