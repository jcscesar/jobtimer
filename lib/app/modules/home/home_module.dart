import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timercs/app/features/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const HomePage())];
}
