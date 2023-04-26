import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:woxro_task/controller/controller_home.dart';
import 'package:woxro_task/view/screens/screen_technology/technolegy_blog.dart';
import 'package:woxro_task/view/style/color.dart';
import 'package:woxro_task/view/style/fonts.dart';
import 'package:woxro_task/view/style/size.dart';

class CoupenScreen extends StatelessWidget {
  const CoupenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 20.h,
      ),
      child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 2.5,
              mainAxisExtent: 130.h,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                index == 3
                    ? Get.to(const TechnologyAndBlog(),
                        transition: Transition.noTransition)
                    : null;
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: black),
                  borderRadius: r20,
                ),
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/tr.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: rc20,
                            topRight: rc20,
                          ),
                          // color: grey
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: rc20,
                            bottomRight: rc20,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              homeCardTitles[index],
                              style: cardText,
                            ),
                            // ignore: prefer_const_constructors
                            Text(
                              comenText,
                              maxLines: 2,
                              style: subHedingLight,
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    ));
  }
}
