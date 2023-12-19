import 'package:flutter/material.dart';
import 'package:job_timercs/app/core/constansts.dart';

Widget circularProgressCustom() {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: CircularProgressIndicator.adaptive(
      backgroundColor: ColorsThemes.white,
    ),
  );
}
