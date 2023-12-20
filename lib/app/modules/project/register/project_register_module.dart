import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timercs/app/modules/project/register/project_register_page.dart';

class ProjectRegisterModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ProjectRegisterPage()),
      ];
}
