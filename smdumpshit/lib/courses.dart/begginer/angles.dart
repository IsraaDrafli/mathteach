import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';
import 'package:smdumpshit/frags/quizzes.dart';

List<Question> questions = [
  Question(
      question: 'What kind of angle is this',
      options: [
        'Right angle ',
        'Obtuse angle',
        'Acute angle',
        'straight angle'
      ],
      correctIndex: 2,
      img: 'images/quiz/angle1.png'),
  Question(
      question: 'An obtuse angle ',
      options: [
        'is exactly 90⁰',
        'less than 90⁰',
        'greater than 90⁰',
        'none of these'
      ],
      correctIndex: 1,
      img: 'images/quiz/angle2.png'),
  Question(
      question: 'An acute angle',
      options: [
        'is exactly 90⁰',
        'less than 90⁰',
        'greater than 90⁰',
        'none of these'
      ],
      correctIndex: 1,
      img: 'images/quiz/angle3.png'),
  // Add more questions here...
];

class angles extends StatelessWidget {
  angles({super.key});
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
                    'HOME / BIGNNER LEVEL/ GEOMETRY 101',
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
                        'Basics of area',
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
                                    'images/kd.jpg', // add your image
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
                                  Example(),
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
                                                    quizCard(),
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
                                    height: 5,
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
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Color.fromARGB(255, 10, 139, 148),
  );
  final TextStyle style2 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 13, height: 2);
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
            Text('Angles', style: style1),
            SizedBox(
              height: 5,
            ),
            Text('1) What is an angle :', style: style4),
            SizedBox(
              height: 3,
            ),
            Text(
                '  Imagine two lines meeting each other like a corner where walls meet.',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text(
                '  When two lines or rays meet at a point, they form an angle.',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text(
                '  Angles help us measure how much one line is turned from another.',
                style: style2),
            SizedBox(
              height: 5,
            ),
            Text('2) Parts of an Angle :', style: style4),
            SizedBox(
              height: 3,
            ),
            Text(
                '  Vertex: Think of it as the point where the two lines or rays meet, like the corner of a book.',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text(
                '  Arms: These are the two lines or rays that make up the angle, like the edges of a slice of pizza.',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text('3) Notation of an Angle :', style: style4),
            SizedBox(
              height: 3,
            ),
            Text(
                '  Angles are usually named with three letters, and the middle letter represents the vertex.',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text('  For example, ∠ABC means the angle formed at point B.',
                style: style2),
            SizedBox(
              height: 5,
            ),
            Text('Types of Angles', style: style1),
            SizedBox(
              height: 10,
            ),
            Text('1) Acute Angle: :', style: style4),
            SizedBox(
              height: 3,
            ),
            Text(
                '  An acute angle is an angle that measures greater than 0 degrees and less than 90 degrees.',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Container(
              child: Image.asset(
                'images/ACT.png',
                fit: BoxFit.fill,
              ),
              height: 150,
              width: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Text('2) Right Angle:', style: style4),
            SizedBox(
              height: 3,
            ),
            Text(
                '  A right angle is an angle that measures exactly 90 degrees.',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text('  It forms a perfect "L" shape.', style: style2),
            SizedBox(
              height: 3,
            ),
            Container(
              child: Image.asset(
                'images/rh.png',
                fit: BoxFit.fill,
              ),
              height: 150,
              width: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Text('3) Obtuse Angle:', style: style4),
            SizedBox(
              height: 3,
            ),
            Text(
                'An obtuse angle is an angle that measures greater than 90 degrees and less than 180 degrees.',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text(
                'It is wider than a right angle but narrower than a straight angle which we are going to next.',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Container(
              child: Image.asset(
                'images/obt.png',
                fit: BoxFit.fill,
              ),
              height: 135,
              width: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Text('4) Straight Angle:', style: style4),
            SizedBox(
              height: 3,
            ),
            Text(
                'A straight angle is an angle that measures exactly 180 degrees.',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text('It forms a straight line.', style: style2),
            SizedBox(
              height: 3,
            ),
            Container(
              child: Image.asset(
                'images/str.png',
                fit: BoxFit.cover,
              ),
              height: 130,
              width: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Text('5) Reflex Angle : ', style: style4),
            SizedBox(
              height: 3,
            ),
            Text(
                'A reflex angle is an angle that measures greater than 180 degrees and less than 360 degrees.',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text('It extends beyond a straight angle.', style: style2),
            SizedBox(
              height: 3,
            ),
            Container(
              child: Image.asset(
                'images/rfl.png',
                fit: BoxFit.fill,
              ),
              height: 150,
              width: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Text('6) Complete Angle : ', style: style4),
            SizedBox(
              height: 3,
            ),
            Text('A complete angle is an angle that measures equals 360°.',
                style: style2),
            Container(
              child: Image.asset(
                'images/com.png',
                fit: BoxFit.fill,
              ),
              height: 200,
              width: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Remark :  ', style: style4),
            SizedBox(
              height: 5,
            ),
            Text(
                '1)  The size of the opening between the rays determines the measurement of the angle, typically in degrees. ',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text(
                '2)   We use angles to describe how objects move and rotate. This is important in physics, engineering, animation, and even sports where analyzing movements helps improve performance. ',
                style: style2),
            SizedBox(
              height: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class Example extends StatelessWidget {
  final TextStyle style2 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 12, height: 2);
  final TextStyle style3 = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
      height: 2,
      color: Color.fromARGB(255, 10, 139, 148));
  final TextStyle style4 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 13,
    color: Color.fromRGBO(10, 139, 148, 1),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: 325,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 233, 246, 246),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Examples : ",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 10, 139, 148),
                ),
              ),
              Row(
                children: [
                  Text('1) ', style: style4),
                  Text(
                    'The angle formed by the hour and minute',
                    style: style2,
                  ),
                ],
              ),
              Text(
                '   hands of a clock at 3:00 is acute',
                style: style2,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('2) ', style: style4),
                  Text(
                    'The angle formed by the hour and minute',
                    style: style2,
                  ),
                ],
              ),
              Text(
                '   hands of a clock at 2:30 is obtuse',
                style: style2,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('3) ', style: style4),
                  Text(
                    'The angle formed by two adjacent sides',
                    style: style2,
                  ),
                ],
              ),
              Text(
                '  of a rectangle or square',
                style: style2,
              ),
              Text(
                '  is a straight angle',
                style: style2,
              ),
              SizedBox(
                height: 9,
              ),
              Row(
                children: [
                  Text('4) ', style: style4),
                  Text(
                    'The angle formed by the minute hand',
                    style: style2,
                  ),
                ],
              ),
              Text(
                '  of a clock when it moves from 3:00 to 9:00',
                style: style2,
              ),
              Text(
                '   is a Reflex Angle',
                style: style2,
              ),
            ],
          ),
        ),
        // add your examples here
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
