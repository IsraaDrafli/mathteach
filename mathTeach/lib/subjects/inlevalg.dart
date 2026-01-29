import 'package:flutter/material.dart';
import 'package:smdumpshit/data.dart';
import 'package:get/get.dart';

class Course extends StatelessWidget {
  final CourseI course;
  final String img;
  final mycontroller = Controller();
  final CourseController3 courseController = Get.put(CourseController3());

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

class CourseController3 extends GetxController {
  RxList<CourseI> courses = [
    CourseI(title: 'Functions and variables', art: '10 articles', next: '/fun'),
    CourseI(title: 'Limits', art: '15 articles', next: '/limits'),
    CourseI(title: 'Sets', art: '12 articles', next: '/setts'),
    CourseI(title: 'Numbers and Sets', art: '6 articles', next: '/numsets'),
    CourseI(title: 'Power,SqRoot and AbsVal', art: '6 articles', next: '/pow'),
    CourseI(title: 'Quadratic equations', art: '6 articles', next: '/qua'),
    // Add more courses as needed
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
  'images/rr.png',
  'images/rr.png',
];
final List<Map<String, String>> intalgcourses = [
  {
    'title': 'Functions and variables',
    'articles': '10 articles',
    'image': 'images/rr.png',
    'next': '/fun'
  },
  {
    'title': 'Limits',
    'articles': '15 articles',
    'image': 'images/rr.png',
    'next': '/limits'
  },
  {
    'title': 'Sets',
    'articles': '6 articles',
    'image': 'images/rr.png',
    'next': '/setts'
  },
  {
    'title': 'Numbers and Sets',
    'articles': '12 articles',
    'image': 'images/rr.png',
    'next': '/numsets'
  },
  {
    'title': 'Power,SqRoot and AbsVal',
    'articles': '6 articles',
    'image': 'images/rr.png',
    'next': '/pow'
  },
  {
    'title': 'Quadratic equations',
    'articles': '6 articles',
    'image': 'images/rr.png',
    'next': '/qua'
  },
];

class intAlgebra extends StatelessWidget {
  final CourseController3 courseController = Get.put(CourseController3());
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
