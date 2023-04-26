import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woxro_task/controller/controller_navbar.dart';
import 'package:woxro_task/view/screens/screen_navbar/pages/screen_account.dart';
import 'package:woxro_task/view/screens/screen_home/screen_home.dart';
import 'package:woxro_task/view/screens/screen_navbar/pages/screen_message.dart';
import 'package:woxro_task/view/screens/screen_navbar/pages/screen_suopport.dart';
import 'package:woxro_task/view/style/color.dart';

// ignore: must_be_immutable
class NavbarScreen extends StatelessWidget {
  NavbarScreen({super.key});

  NavbarController navbarController = Get.put(NavbarController());
  final pages = [
    const HomeScreen(),
    const SupportScreen(),
    const MessageScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:orengeLight ,
      body: Obx(() {
        return IndexedStack(
          index: navbarController.currentIndex.value,
          children: pages,
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
            currentIndex: navbarController.currentIndex.value,
            //  backgroundColor: mainColor,
            selectedItemColor: black,
            unselectedItemColor: grey,
            onTap: (index) {
              navbarController.changeIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  (CupertinoIcons.home),
                  color: Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.mail),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined),
                label: "",
              ),
            ]);
      }),
    );
  }
}
