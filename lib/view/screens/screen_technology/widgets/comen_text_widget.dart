import 'package:flutter/cupertino.dart';
import 'package:woxro_task/view/style/fonts.dart';

Widget commenTextWidget() {
  return Align(
    alignment: Alignment.center,
    child: Text(
      comenText,
      maxLines: 2,
      style: technologytext,
      textAlign: TextAlign.center,
    ),
  );
}
