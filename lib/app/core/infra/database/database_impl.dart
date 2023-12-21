import 'package:isar/isar.dart';
import 'package:job_timercs/app/core/infra/entities/project.dart';
import 'package:job_timercs/app/core/infra/entities/project_task.dart';
import 'package:path_provider/path_provider.dart';

import './database.dart';

class DatabaseImpl implements Database {
  late Isar _databaseInstance;

  @override
  Future<Isar> openConnection() async {
    // ignore: unnecessary_null_comparison
    if (_databaseInstance == null) {
      final dir = await getApplicationDocumentsDirectory();
      _databaseInstance = await Isar.open(
        [
          ProjectTaskSchema,
          ProjectSchema,
        ],
        directory: dir.path,
        inspector: true,
      );
    }
    return _databaseInstance;
  }
}
