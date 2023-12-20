import 'package:flutter/material.dart';
import 'package:job_timercs/app/core/constansts.dart';
import 'package:job_timercs/app/modules/home/widgets/header_project_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: SafeArea(
          child: ListTile(
            title: Text('Sair'),
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: ColorsThemes.brow,
              title: const Text(
                'Project',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              expandedHeight: 100,
              toolbarHeight: 100,
              centerTitle: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
            ),
            SliverPersistentHeader(delegate: HeaderProjectMenu(), pinned: true),
            SliverList(
              delegate: SliverChildListDelegate(
                [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
