import 'package:flutter/material.dart';

import 'package:smdumpshit/data.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/frags/FavoriteScreen.dart';

class Course extends StatelessWidget {
  final CourseI course;
  final String img;
  final mycontroller = Controller();
  final CourseController1 course1Controller = Get.put(CourseController1());
  final FavoritesController favoritesController =
      Get.put(FavoritesController());

  Course(this.course, this.img);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          ),
          splashFactory: NoSplash.splashFactory,
          elevation: MaterialStateProperty.all(0),
          overlayColor: MaterialStatePropertyAll(Colors.white)),
      onPressed: () {
        Navigator.pushNamed(context, course.next);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 150,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: 89,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            img,
                          ))),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Obx(() {
                    Color iconColor =
                        mycontroller.pressed.value ? Colors.red : Colors.white;
                    return IconButton(
                      icon: Icon(Icons.favorite, color: iconColor),
                      onPressed: () {
                        mycontroller.toggle();
                        course1Controller.toggleFavorite(course);
                      },
                    );
                  }),
                ),
              ],
            ),
            Positioned(
              bottom: 2,
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 100.0,
                        //spreadRadius: 0.5,
                        offset: Offset(0, 2))
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 13,
                      ),
                      child: Text(
                        course.title,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color.fromRGBO(10, 139, 148, 1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 13,
                      ),
                      child: Text(
                        course.art,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color.fromRGBO(38, 50, 56, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  RxBool pressed = false.obs;

  // Function to toggle the press state
  void toggle() {
    pressed.value = !pressed.value;
  }
}

class CourseController1 extends GetxController {
   final FavoritesController favoritesController = Get.find();
  RxList<CourseI> courses = [
    CourseI(title: 'Numbers and Degits', art: '10 articles', next: '/numb'),
    CourseI(
        title: 'Addition and Substruction', art: '15 articles', next: '/add'),
    CourseI(
        title: 'Multiplication and Division', art: '12 articles', next: '/mul'),
    CourseI(title: 'Logic Operations', art: '6 articles', next: '/comp'),
    // Add more courses as needed
  ].obs;

  RxList<CourseI> favorites = <CourseI>[].obs;

  void toggleFavorite(CourseI course) {
    course.isFavorite = !course.isFavorite;
    favoritesController.toggleFavorite(course);
  }

  
  
}

List<String> images = [
  'images/rr.png',
  'images/crs/R.jpg',
  'images/crs/multiplication.jpg',
  'images/crs/comparing.jpg'
];

class begAlgebra extends StatelessWidget {
  final CourseController1 courseController = Get.put(CourseController1());
  @override
  Widget build(BuildContext context) {
    //final courses = CourseTitle;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5, left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Userbar(), returnButt('HOME / BIGNNER LEVEL')],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Algebra courses ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 155,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 15,
                            childAspectRatio: 1.5,
                            crossAxisCount: 2),
                        itemCount: courseController.courses.length,
                        itemBuilder: (context, index) {
                          CourseI course = courseController.courses[index];
                          return Course(course, images[index]);
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
