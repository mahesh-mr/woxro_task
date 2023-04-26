import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woxro_task/view/style/color.dart';
import 'package:woxro_task/view/style/fonts.dart';
import 'package:woxro_task/view/style/size.dart';

class ReactScreen extends StatelessWidget {
  const ReactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            h40,
            Container(
              height: 44.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: r20,
                border: Border.all(
                  color: black,
                  width: .2,
                ),
              ),
              child: Padding(
                padding: pall8,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    comenText,
                    maxLines: 2,
                    style: technologytext,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            h20,
            Expanded(
                child: ListView.separated(
              separatorBuilder: (context, index) => h10,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                    height: 80.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: r15,
                      border: Border.all(color: black, width: .2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: rc15, bottomLeft: rc15),
                              ),
                              child: Padding(
                                padding: pall8,
                                child: Text(
                                  comenText,
                                  maxLines: 2,
                                  style: technologytext,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: rc15, bottomRight: rc15),
                                image: const DecorationImage(
                                    image: AssetImage('assets/card.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ))
                      ],
                    ));
              },
            ))
          ],
        ),
      ),
    );
  }
}
