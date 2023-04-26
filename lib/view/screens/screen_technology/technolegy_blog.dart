import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woxro_task/view/screens/commen_pages/page1.dart';
import 'package:woxro_task/view/screens/commen_pages/page2.dart';
import 'package:woxro_task/view/screens/commen_pages/page3.dart';
import 'package:woxro_task/view/screens/commen_pages/page4.dart';
import 'package:woxro_task/view/screens/screen_technology/pages/react_scren.dart';
import 'package:woxro_task/view/screens/widgets/circle_container.dart';
import 'package:woxro_task/view/screens/widgets/tabbar_widget_custom.dart';
import 'package:woxro_task/view/style/size.dart';

class TechnologyAndBlog extends StatelessWidget {
  const TechnologyAndBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: CustomTabbarWidget(
              paddingSize: 25.h,
              size: 150.h,
              title: "Technology and blog",
              tabs: [
                Tab(
                  text: "react",
                  icon: circleContainer(
                      widget: Padding(
                    padding: pall8,
                    child: Image.asset('assets/react.png'),
                  )),
                ),
                Tab(
                  text: "Azure",
                  icon: circleContainer(
                      widget: Padding(
                    padding: pall8,
                    child: Image.asset('assets/azure.png'),
                  )),
                ),
                Tab(
                  text: "Nodejs",
                  icon: circleContainer(
                      widget: Padding(
                    padding: pall8,
                    child: SizedBox(child: Image.asset('assets/nd.png')),
                  )),
                ),
                Tab(
                  text: "Mongodb",
                  icon: circleContainer(
                      widget: Padding(
                    padding: pall8,
                    child: Image.asset('assets/mongodb.png'),
                  )),
                ),
                Tab(
                  text: "Laravel",
                  icon: circleContainer(
                      widget: Padding(
                    padding:  EdgeInsets.all(8.0.w),
                    child: SizedBox(
                        height: 25.h, child: Image.asset('assets/laravel.png'),),
                  )),
                ),
              ]),
          body: const TabBarView(
            children: [
              ReactScreen(),
              Page1(),
              Page2(),
              Page3(),
              Page4(),
            ],
          ),
        ));
  }
}
