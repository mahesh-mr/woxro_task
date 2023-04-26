import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woxro_task/view/style/color.dart';
import 'package:woxro_task/view/style/fonts.dart';

class CustomTabbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomTabbarWidget({
    super.key,
    required this.title,
    required this.tabs,
    required this.size,
    required this.paddingSize,
  });
  final List<Widget> tabs;
  final String title;
  final double size;
  final double paddingSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: amber,
            ))
      ],
      bottom: PreferredSize(
        preferredSize: const Size.square(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.w, bottom: paddingSize),
              child: Text(
                title,
                style: headline,
              ),
            ),
            TabBar(
                labelStyle: TextStyle(fontSize: 10.sp),
                indicatorColor: white,
                labelColor: black,
                unselectedLabelColor: grey,
                tabs: tabs),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(
        double.infinity,
        size,
      );
}
