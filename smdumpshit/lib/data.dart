import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/courses.dart/login/login.dart';

Color? turq = Color(0xFF0A8B94);
Color? lightGrey = Color.fromARGB(255, 253, 251, 251);
Color? gris = Color(0xFF979797);
Color? redd = Color(0xFFD66767);

class profilController extends GetxController {
  var _hasNotification = false.obs;

  bool get hasNotification => _hasNotification.value;

  void changeNotification(bool value) {
    _hasNotification.value = value;
  }
}

class Controller extends GetxController {
  RxBool pressed = false.obs;

  // Function to toggle the press state
  void toggle() {
    pressed.value = !pressed.value;
  }
}

class IconShapeController extends GetxController {
  RxBool updown = false.obs;
  RxBool Expanded = false.obs;
  RxBool rounded = false.obs;
  void toggleShape() {
    updown.value = !updown.value;
    Expanded.value = !Expanded.value;
    rounded.value = !rounded.value;
  }
}

final MyController controller = Get.put(MyController());

class MyController extends GetxController {
  var elementIndex = 0.obs;
  var pageIndex = 0.obs;
}

class Userbar extends StatelessWidget {
  const Userbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 7, right: 7, bottom: 0),
      child: Row(
        children: [
          TextButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login(),
                    ));
              },
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: Text(
                'User',
                style: TextStyle(color: Colors.black),
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login(),
                    ));
              },
              icon: Icon(
                Icons.expand_more_rounded,
              )),
        ],
      ),
    );
  }
}

class returnButt extends StatelessWidget {
  final String ret;
  const returnButt(this.ret);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 0),
      child: TextButton.icon(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios,
            size: 12, color: Color.fromRGBO(10, 139, 148, 1)),
        label: Text(
          ret,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color.fromRGBO(10, 139, 148, 1)),
        ),
      ),
    );
  }
}

//here's the quiz screen temp
class QuizScreen extends StatelessWidget {
  final List<Question> questions;
  QuizScreen({required this.questions});

  @override
  Widget build(BuildContext context) {
    final QuizController quizController = Get.put(QuizController(questions));
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Userbar(),
          Row(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios,
                    size: 12, color: Color.fromRGBO(10, 139, 148, 1)),
                label: Text(
                  'RETURN',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color.fromRGBO(10, 139, 148, 1)),
                ),
              ),
              Spacer(),
              Text(
                'Quiz',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                width: 75,
              ),
              Spacer()
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 300,
              child: Stack(
                children: [
                  Obx(
                    () => Container(
                      alignment: Alignment.center,
                      height: 250,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            height: 200,
                            width: 200,
                            child: Image.asset(
                              quizController
                                  .questions[quizController.currentIndex.value]
                                  .img, // add your image ,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    child: Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            //blurRadius: 18,
                            spreadRadius: 0.5,
                            // offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Obx(
                            () => TweenAnimationBuilder(
                              tween: Tween<double>(
                                begin: (quizController.currentIndex.value - 1) /
                                    quizController.questions.length,
                                end: quizController.currentIndex.value /
                                    (quizController.questions.length - 1),
                              ),
                              duration: Duration(milliseconds: 500),
                              builder: (_, double value, __) {
                                return LinearProgressIndicator(
                                  value: value,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromRGBO(10, 139, 148, 0.47)),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Obx(
                              () => Padding(
                                padding:
                                    const EdgeInsets.only(right: 25, left: 30),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Question ${quizController.currentIndex.value + 1}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color.fromRGBO(38, 50, 56, 1),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            50, //you can add the width of the question container depending on your question
                                        child: Text(
                                          quizController
                                              .questions[quizController
                                                  .currentIndex.value]
                                              .question,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                            color:
                                                Color.fromRGBO(10, 139, 148, 1),
                                            height: 1.1,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      ...quizController
                                          .questions[
                                              quizController.currentIndex.value]
                                          .options
                                          .asMap()
                                          .entries
                                          .map(
                                            (option) => Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 7, bottom: 7),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.75,
                                                height: 40,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    quizController.checkAnswer(
                                                        option.key);
                                                  },
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                            side: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      10,
                                                                      139,
                                                                      148,
                                                                      0.45),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4))),
                                                    foregroundColor:
                                                        MaterialStateProperty
                                                            .all(
                                                      Color.fromRGBO(
                                                          38, 50, 56, 1),
                                                    ),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .resolveWith<Color>(
                                                                (states) {
                                                      if (quizController
                                                              .selectedIndex ==
                                                          option.key) {
                                                        if (quizController
                                                                .selectedIndex ==
                                                            quizController
                                                                .questions[
                                                                    quizController
                                                                        .currentIndex
                                                                        .value]
                                                                .correctIndex) {
                                                          return Colors.green;
                                                        } else {
                                                          return Colors.red;
                                                        }
                                                      }
                                                      return Color.fromRGBO(
                                                          240,
                                                          240,
                                                          240,
                                                          1); // Default color when not selected
                                                    }),
                                                  ),
                                                  child: Text(option.value),
                                                ),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                        height: 42,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            quizController.nextQuestion();
                                          },
                                          style: ButtonStyle(
                                              minimumSize:
                                                  MaterialStateProperty.all(
                                                      Size(270, 42)),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      const Color.fromRGBO(
                                                          10, 139, 148, 1)),
                                              foregroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(15)))),
                                          child: Obx(() => quizController
                                                  .isLastQuestion
                                              ? Text('Finish')
                                              : Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text('Continue'),
                                                    SizedBox(
                                                      width: 12,
                                                    ),
                                                    Icon(Icons.arrow_forward)
                                                  ],
                                                )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 22,
                                      )
                                    ],
                                  ),
                                ),
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
          ),
        ],
      )),
    );
  }
}

class Question {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String img;

  Question(
      {required this.img,
      required this.question,
      required this.options,
      required this.correctIndex});
}

class QuizController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxInt correctAnswers = 0.obs;
  List<Question> questions;
  QuizController(this.questions);

  bool get isLastQuestion => currentIndex.value == questions.length - 1;

  int selectedIndex = -1;

  void nextQuestion() {
    if (!isLastQuestion) {
      currentIndex.value++;
      selectedIndex = -1;
    } else {
      print('Quiz completed');
    }
  }

  void checkAnswer(int selectedIndex) {
    this.selectedIndex = selectedIndex;
    if (selectedIndex == questions[currentIndex.value].correctIndex) {
      correctAnswers.value++;
    }
  }
}

class CourseI {
  final String title;
  final String art;
  final String next;

  bool isFavorite;

  CourseI(
      {required this.title,
      required this.next,
      required this.art,
      this.isFavorite = false});
}
