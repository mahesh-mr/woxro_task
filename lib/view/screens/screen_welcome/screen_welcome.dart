import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:woxro_task/view/screens/screen_navbar/screen_navbar.dart';
import 'package:woxro_task/view/style/color.dart';
import 'package:woxro_task/view/style/fonts.dart';
import 'package:woxro_task/view/style/size.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          h10,
          Container(
            padding: EdgeInsets.all(5.w),
            height: 180.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/woxro1.jpg'), fit: BoxFit.cover),
            ),
          ),
          h100,
          Text(
            "Welcome",
            style: headline,
          ),
          h10,
          Text(
            comenText,
            maxLines: 4,
            textAlign: TextAlign.center,
            style: subHeding,
          ),
          h80,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: TextButton(
              onPressed: () {
                Get.to(NavbarScreen(), transition: Transition.noTransition);
              },
              style: TextButton.styleFrom(
                foregroundColor: black,
                minimumSize: Size(double.infinity, 40.h),
                side: const BorderSide(width: 2.0),
              ),
              child: const Text(
                'Get Started',
              ),
            ),
          ),
          h60,
          Text(
            "© 2020 Woxro Technolagy Solutions Pvt. Ltd",
            style: normalText,
          )
        ],
      ),
    );
  }
}
