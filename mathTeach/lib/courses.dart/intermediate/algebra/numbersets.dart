import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'What type of number is π?',
      options: ['Whole', 'Rational', 'Irrational', 'Real'],
      correctIndex: 2,
      img: 'images/'),
  Question(
      question: 'Choose the rational number between 1 and 4',
      options: [
        '0',
        '2',
        '1/2',
        '3/2',
      ],
      correctIndex: 3,
      img: 'images/'),
  Question(
      question:
          '_________ is the set of numbers that includes positive and negative numbers',
      options: [
        'Integer numbers',
        'Natural numbers ',
        'Imaginarry numbers',
        'Real numbers'
      ],
      correctIndex: 0,
      img: 'images/'),
  // Add more questions here...
];

class numbers extends StatelessWidget {
  numbers({super.key});
  final mycontroller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Userbar(),
                TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios,
                      size: 12, color: Color.fromRGBO(10, 139, 148, 1)),
                  label: Text(
                    'HOME / INTERMEDIATE LEVEL/ ALGEBRA 101',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Color.fromRGBO(10, 139, 148, 1)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Sets of Numbers',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Obx(() {
                        return IconButton(
                          icon: mycontroller.pressed.value
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(Icons.favorite_border),
                          onPressed: () {
                            mycontroller.toggle();
                          },
                        );
                      }),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 470,
                    child: Stack(
                      children: [
                        Container(
                          height: 135,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'assets/R.jpg', // add your image
                                  ))),
                        ),
                        Positioned(
                          bottom: 2,
                          child: Container(
                            height: 335,
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
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Content(),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  SizedBox(
                                    height: 22,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      height: 42,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    QuizScreen(
                                                  questions: questions,
                                                ),
                                              ));
                                        },
                                        style: ButtonStyle(
                                            minimumSize:
                                                MaterialStateProperty.all(
                                                    Size(270, 70)),
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
                                        child: Text('Test Your Knowledge'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Comments(),
                                  SizedBox(
                                    height: 22,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  final TextStyle style1 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: Color.fromARGB(255, 10, 139, 148));
  final TextStyle style4 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: Color.fromARGB(255, 10, 139, 148));
  final TextStyle style5 = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 13,
      color: Color.fromARGB(255, 11, 136, 145));
  final TextStyle style2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    height: 2,
  );
  final TextStyle style3 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, top: 15),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text('Introduction:', style: style4),
              SizedBox(
                height: 5,
              ),
              Text(
                  'Numbers are not just a singular entity but are divided into various sets, each with its own unique characteristics and applications. These sets encompass different types of numbers, from the familiar whole numbers to more complex mathematical constructs.',
                  style: style2),
              SizedBox(
                height: 12,
              ),
              Text(
                "1) Natural Numbers (N): ",
                style: style5,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '  1) Definition:',
                style: style3,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Natural numbers are the counting numbers we use to count objects. They start from 1 and go on infinitely (infinity is a term that we use in mathematics to express a very big number). These numbers are what we naturally use for simple counting.",
                style: style2,
              ),
              Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 246, 246),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      Text(
                        'example:',
                        style: style4,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'If you are counting dates in a basket, you would use natural numbers: 1 date, 2 dates, 3 dates, and so on.',
                        style: style2,
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                '  2) Usage :',
                style: style3,
              ),
              Text(
                'Whenever we count things in our daily life, like the number of books on a shelf or the fingers on our hands, we are using natural numbers.',
                style: style2,
              ),
              Text(
                '  Remark :',
                style: style3,
              ),
              Text(
                'We are considering the number zero (0) as a natural number but in some books or other resources they consider 0 as not a natural number ;So they consider another set called whole numbers containing natural nombers + the zero number',
                style: style2,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "2)  Integer Numbers (Z): ",
                style: style5,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '  1) Definition:',
                style: style3,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Integers are a step further from natural numbers. They include all the whole numbers, their negatives, and zero.",
                style: style2,
              ),
              Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 246, 246),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      Text(
                        'example:',
                        style: style4,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Picture a thermometer. It can show temperatures above zero (like 1°C, 2°C) and below zero (like -1°C, -2°C), including zero itself.',
                        style: style2,
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                '  2) Usage :',
                style: style3,
              ),
              Text(
                ' We use integers in situations where we need to talk about things that can be less than zero, like money owed or temperatures below freezing.',
                style: style2,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "3)  Rational Numbers (Q): ",
                style: style5,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '  1) Definition:',
                style: style3,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Rational numbers are those that can be expressed as the quotient or fraction of two integers, where the denominator is not zero. In other words, a rational number is any number that can be written in the form p/q, where p and q are integers and q is not equal to zero.",
                style: style2,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "For example, consider the fraction 3/4 Here, 3 and 4 are both integers, and the denominator 4 is not zero. Hence,3/4 is a rational number",
                style: style2,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Rational numbers can also include integers, as every integer can be expressed as a fraction with a denominator of 1. For instance, 5 can be written as 5/1 making rational number",
                style: style2,
              ),
              Container(
                height: 220,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 246, 246),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      Text(
                        'example:',
                        style: style4,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Imagine you have 10 coins and you want to give 2 of them as Zakat, which is a mandatory charitable donation in Islam. Here, the fraction 2/10 that represent the ratio of the donated over the total owned coins which means that you are donating 0.2 or (20 %) of your total wealth .',
                        style: style2,
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                '  2) Usage :',
                style: style3,
              ),
              Text(
                ' Rational numbers find extensive use in various real-life scenarios, such as measurements, calculations involving money, and proportions in recipes.',
                style: style2,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "4) Irrational Numbers : ",
                style: style5,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '  1) Definition:',
                style: style3,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                " Irrational includes numbers that cannot be expressed as fractions of two integers . These numbers have decimal representations that neither terminate nor repeat.",
                style: style2,
              ),
              Container(
                height: 220,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 246, 246),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      Text(
                        'example:',
                        style: style4,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'classic example of an irrational number is π, which represents the ratio of the circumference of a circle to its diameter. The decimal representation of π goes on indefinitely without repeating a pattern: π≈3.14159265....",',
                        style: style2,
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                '  2) Usage :',
                style: style3,
              ),
              Text(
                'Irrational numbers arise in geometry, physics, and various other branches of mathematics. They are crucial in areas like calculus, where they are used to define transcendental functions such as the natural logarithm and trigonometric functions.',
                style: style2,
              ),
              Text(
                "5) Real Numbers : ",
                style: style5,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '  1) Definition:',
                style: style3,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Real numbers encompass all rational and irrational numbers, forming the broadest category of numbers used in mathematics. Essentially, real numbers include every possible point on the number line.",
                style: style2,
              ),
              Text(
                '  2) Usage :',
                style: style3,
              ),
              Text(
                'Real numbers are incredibly versatile and find applications in numerous fields, including geometry, physics, engineering, and finance. They are used to represent quantities such as distances, time intervals, temperatures, and probabilities, among others.',
                style: style2,
              ),
            ]),
      ),
    );
  }
}

class Userbar extends StatelessWidget {
  const Userbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 7, right: 7),
      child: Row(
        children: [
          TextButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
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
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.expand_more_rounded,
              )),
        ],
      ),
    );
  }
}
