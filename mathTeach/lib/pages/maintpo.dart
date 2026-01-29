import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/frags/FavoriteScreen.dart';
import 'package:smdumpshit/frags/home.dart';
import 'package:smdumpshit/frags/profile.dart';
import 'package:smdumpshit/frags/quizzes.dart';
import 'package:smdumpshit/data.dart';

List<Widget> pages = [
  home(),
  quizzes(),
  FavoriteScreen(),
  myprofile(),
];

class maintpo extends StatelessWidget {
  const maintpo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          bottomNavigationBar: bNavBar(),
          body: pages[controller.pageIndex.value],
        ),
      ),
    );
  }
}

class bNavBar extends StatelessWidget {
  const bNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
            unselectedItemColor: gris,
            backgroundColor: lightGrey,
            selectedItemColor: turq,
            elevation: 5,
            currentIndex: controller.pageIndex.value,
            onTap: (index) {
              controller.pageIndex.value = index;
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'Quizzes'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'favourite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2), label: 'profile')
            ]));
  }
}
