import 'package:flutter/material.dart';
import 'package:job_timercs/app/core/constansts.dart';

class ProjectRegisterPage extends StatefulWidget {
  const ProjectRegisterPage({Key? key}) : super(key: key);

  @override
  State<ProjectRegisterPage> createState() => _ProjectRegisterPageState();
}

class _ProjectRegisterPageState extends State<ProjectRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Projecto'),
      ),
      body: Container(
        height: 200,
        width: MediaQuery.sizeOf(context).width,
        color: ColorsThemes.greyligth,
      ),
    );
  }
}
