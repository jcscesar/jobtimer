import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timercs/app/core/infra/database/database.dart';
import 'package:job_timercs/app/core/infra/entities/project.dart';
import 'package:job_timercs/app/core/infra/entities/project_status.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: ElevatedButton(
              onPressed: () async {
                final db = Modular.get<Database>();
                final connection = await db.openConnection();
                connection.writeTxn(() {
                  var project = Project();
                  project.name = 'Project teste';
                  project.status = ProjectStatus.emAndamento;
                  return connection.projects.put(project);
                });
              },
              child: const Text('New'),
            ),
          )
        ],
      ),
    );
  }
}
