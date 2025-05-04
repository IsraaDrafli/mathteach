import 'package:flutter/material.dart';
import 'package:smdumpshit/data.dart';
import 'package:get/get.dart';

class Course extends StatelessWidget {
  final CourseI course;
  final String img;
  final mycontroller = Controller();
  final CourseController4 courseController = Get.put(CourseController4());

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
                        courseController.toggleFavorite(
                            courseController.courses.indexOf(course));
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

class CourseController4 extends GetxController {
  RxList<CourseI> courses = [
    CourseI(title: 'Vectors', art: '10 articles', next: '/vect'),
    CourseI(title: 'Angles', art: '15 articles', next: '/angl'),
    CourseI(title: 'Trigonometry', art: '12 articles', next: '/trig'),
    CourseI(title: 'Pythagores theorem', art: '6 articles', next: '/py'),
    CourseI(title: 'Thales theorem', art: '6 articles', next: '/thales'),
  ].obs;
  RxList<CourseI> favorites = <CourseI>[].obs;
  void toggleFavorite(int index) {
    courses[index].isFavorite = !courses[index].isFavorite;
    if (courses[index].isFavorite) {
      favorites.add(courses[index]);
    } else {
      favorites.remove(courses[index]);
    }
  }

  void removeFavorite(int index) {
    courses[index].isFavorite = !courses[index].isFavorite;
    favorites.remove(courses[index]);
  }
}

List<String> images = [
  'images/rr.png',
  'images/rr.png',
  'images/rr.png',
  'images/rr.png',
  'images/rr.png'
];

final List<Map<String, String>> intgeocourses = [
  {
    'title': 'Vectors',
    'articles': '10 articles',
    'image': 'images/rr.png',
    'next': '/vect'
  },
  {
    'title': 'Angles',
    'articles': '15 articles',
    'image': 'images/rr.png',
    'next': '/angl'
  },
  {
    'title': 'Trigonometry',
    'articles': '12 articles',
    'image': 'images/rr.png',
    'next': '/trig'
  },
  {
    'title': 'Pythagores theorem',
    'articles': '6 articles',
    'image': 'images/rr.png',
    'next': '/py'
  },
  {
    'title': 'Thales theorem',
    'articles': '6 articles',
    'image': 'images/rr.png',
    'next': '/thales'
  },
];

class intGeo extends StatelessWidget {
  final CourseController4 courseController = Get.put(CourseController4());
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
