import 'package:isar/isar.dart';
part 'project_task.g.dart';

@Collection()
class ProjectTask {
  Id id = Isar.autoIncrement;
  late String name;
  late int durantion;
  late DateTime created = DateTime.now();
}
