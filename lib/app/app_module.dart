import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timercs/app/core/infra/database/database_impl.dart';
import 'package:job_timercs/app/modules/home/home_module.dart';
import 'package:job_timercs/app/modules/login/login_module.dart';
import 'package:job_timercs/app/modules/project/project_module.dart';
import 'package:job_timercs/app/modules/splash/splash_page.dart';
import 'package:job_timercs/app/repositories/projects/project_repository.dart';
import 'package:job_timercs/app/repositories/projects/project_repository_impl.dart';
import 'package:job_timercs/app/services/auth/auth_service.dart';
import 'package:job_timercs/app/services/auth/auth_service_impl.dart';
import 'package:job_timercs/app/services/project/project_service.dart';
import 'package:job_timercs/app/services/project/project_service_impl.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<AuthService>((i) => AuthServiceImpl()),
        Bind.lazySingleton((i) => DatabaseImpl()),
        Bind.lazySingleton<ProjectRepository>(
            (i) => ProjectRepositoryImpl(database: i())),
        Bind.lazySingleton<ProjectService>(
            (i) => ProjectServiceImpl(projectRepository: i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/login/', module: LoginModule()),
        ModuleRoute('/home/', module: HomeModule()),
        ModuleRoute('/project/', module: ProjectModule()),
      ];
}
