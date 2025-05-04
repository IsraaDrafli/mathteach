import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data.dart';

class FavoriteScreen extends StatelessWidget {
  final FavoritesController favoritesController =
      Get.put(FavoritesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Userbar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('My Favorite',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: Obx(
                      () => ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          CourseI course = favoritesController.favorites[index];
                          return favouritCourse(course);
                        },
                        itemCount: favoritesController.favorites.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ])),
    );
  }
}

class favouritCourse extends StatelessWidget {
  final CourseI course;
  favouritCourse(this.course);
  final FavoritesController favoritesController = Get.find();

  @override
  Widget build(BuildContext context) {
    final cardA = GlobalKey<ExpansionTileCardState>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: ExpansionTileCard(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          elevation: 0,
          key: cardA,
          leading: Icon(
            Icons.favorite,
            color: redd,
          ),
          title: Text(course.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: Text(
            course.art,
            style: TextStyle(
                color: Color.fromRGBO(138, 144, 148, 1),
                fontSize: 10,
                fontWeight: FontWeight.w500),
          ),
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Container(
                  height: 70,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, course.next);
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(10, 139, 148, 1)),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(26)))),
                          child: Text('Learn More'),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              favoritesController.toggleFavorite(course);
                            },
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(10, 139, 148, 1)),
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                    color: Color.fromRGBO(10, 139, 148, 1)),
                              ),
                            ),
                            child: Text('Unfavorite')),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoritesController extends GetxController {
  RxList<CourseI> favorites = <CourseI>[].obs;

  void toggleFavorite(CourseI course) {
    if (favorites.contains(course)) {
      favorites.remove(course);
    } else {
      favorites.add(course);
    }
  }
}
