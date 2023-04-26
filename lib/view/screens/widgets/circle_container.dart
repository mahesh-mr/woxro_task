import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woxro_task/view/style/color.dart';

Widget circleContainer({required Widget widget}) {
  return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200.h),
          border: Border.all(width: 1, color: black)),
      child: widget);
}
