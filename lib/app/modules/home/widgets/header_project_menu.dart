import 'package:flutter/material.dart';
import 'package:job_timercs/app/core/constansts.dart';
import 'package:job_timercs/app/core/infra/entities/project_status.dart';

class HeaderProjectMenu extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: constraints.maxWidth * .51,
                height: constraints.maxHeight * .6,
                child: DropdownButtonFormField<ProjectStatus>(
                  alignment: AlignmentDirectional.center,
                  decoration: InputDecoration(
                    constraints: const BoxConstraints.expand(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 5,
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    isCollapsed: true,
                    suffixIcon: Icon(
                      Icons.download_for_offline_rounded,
                      color: ColorsThemes.brow,
                    ),
                    suffixStyle: TextStyle(
                      color: ColorsThemes.brow,
                      fontSize: 15,
                    ),
                  ),
                  items: ProjectStatus.values
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e.label,
                            style: TextStyle(
                              color: ColorsThemes.brow,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                width: constraints.maxWidth * .4,
                height: constraints.maxHeight * .6,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/project/register');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(ColorsThemes.brow),
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.all(2),
                    ),
                  ),
                  icon: const Icon(Icons.add, color: Colors.white),
                  label: const Text(
                    'Novo Projeto',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  double get maxExtent => 80.0;

  @override
  double get minExtent => 80.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
