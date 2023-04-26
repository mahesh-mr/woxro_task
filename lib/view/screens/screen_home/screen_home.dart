import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woxro_task/view/screens/commen_pages/page3.dart';
import 'package:woxro_task/view/screens/commen_pages/page2.dart';
import 'package:woxro_task/view/screens/screen_home/pages/screen_cupen.dart';
import 'package:woxro_task/view/screens/commen_pages/page1.dart';
import 'package:woxro_task/view/screens/widgets/circle_container.dart';
import 'package:woxro_task/view/screens/widgets/tabbar_widget_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: CustomTabbarWidget(
          size: 150.h,
          paddingSize: 8.h,
          title: "Welcome",
          tabs: [
            Tab(
              text: "Coupon",
              icon: circleContainer(
                  widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 20, child: Image.asset('assets/coupon.png')),
              )),
            ),
            Tab(
              text: "Ads",
              icon: circleContainer(
                  widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    SizedBox(height: 20, child: Image.asset('assets/ads.png')),
              )),
            ),
            Tab(
              text: "Quatation",
              icon: circleContainer(
                  widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 20, child: Image.asset('assets/quatation.png')),
              )),
            ),
            Tab(
              text: "Brochure",
              icon: circleContainer(
                  widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 20, child: Image.asset('assets/brochure.png')),
              )),
            )
          ],
        ),
        body: const TabBarView(
          children: [
            CoupenScreen(),
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
