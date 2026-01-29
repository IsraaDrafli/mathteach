import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'A unit vector is',
      options: [
        'A vector with one unit',
        'A vector with one direction',
        'A vector with magnitude=1',
        'Non of these',
      ],
      correctIndex: 2,
      img: 'images/random.png'),
  Question(
      question: 'Determine the magnitude of the vector',
      options: [
        '7',
        '8',
        '9',
        '10',
      ],
      correctIndex: 0,
      img: 'images/vectors2.png'),
  Question(
      question: ' Calculate the angle between two vectors',
      options: [
        '44.44',
        '40.11',
        '45.60',
        '44.41',
      ],
      correctIndex: 3,
      img: 'images/vectors3.png'),
  // Add more questions here...
];

class vectors extends StatelessWidget {
  vectors({super.key});
  final mycontroller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Userbar(),
                TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios,
                      size: 12, color: Color.fromRGBO(10, 139, 148, 1)),
                  label: const Text(
                    'HOME / INTERMEDIATE LEVE L/ Geometry  101',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Color.fromRGBO(10, 139, 148, 1)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        ' Vectors ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      Obx(() {
                        return IconButton(
                          icon: mycontroller.pressed.value
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(Icons.favorite_border),
                          onPressed: () {
                            mycontroller.toggle();
                          },
                        );
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 470,
                    child: Stack(
                      children: [
                        Container(
                          height: 135,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'images/geo/01.png', // add your image
                                  ))),
                        ),
                        Positioned(
                          bottom: 2,
                          child: Container(
                            height: 335,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
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
                                  const Content(),
                                  const SizedBox(
                                    height: 13,
                                  ),
                                  const SizedBox(
                                    height: 22,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: SizedBox(
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
                                            minimumSize: MaterialStateProperty.all(
                                                const Size(270, 70)),
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
                                        child:
                                            const Text('Test Your Knowledge'),
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
  final TextStyle style1 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: Color.fromARGB(255, 10, 139, 148));
  final TextStyle style4 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: Color.fromARGB(255, 10, 139, 148));
  final TextStyle style5 = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 13,
      color: Color.fromARGB(255, 11, 136, 145));
  final TextStyle style2 = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    height: 2,
  );
  final TextStyle style6 = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 13,
    height: 2,
  );
  final TextStyle style3 = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: Colors.black,
  );

  const Content({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, top: 15),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1) Definition of a Vector : ",
              style: style4,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'A vector is a mathematical object that has both direction and strength.  Think of it as an arrow pointing somewhere, with the length of the arrow showing how strong something is.',
              style: style2,
            ),
            const SizedBox(
              height: 3,
            ),
            Container(
              height: 111,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'Examples of Vectors :',
                      style: style4,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      'The most common examples of the vector are Velocity, Acceleration, Force, Increase/Decrease in Temperature etc. ',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "2) Vector Notation: ",
              style: style4,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'As we know already, a vector has both magnitude and direction. In the above figure, the length of the line AB is the magnitude and head of the arrow points towards the direction.',
              style: style2,
            ),
            const SizedBox(
              height: 3,
            ),
            Image.asset("images/geo/02.png"),
            const SizedBox(
              height: 18,
            ),
            Text(
              "3)  Vector Properties: ",
              style: style4,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "1) Equality : ",
              style: style3,
            ),
            Text(
              'Two vectors are considered equal only if they have the same magnitude and direction.',
              style: style2,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "2) Magnitude : ",
              style: style3,
            ),
            Text(
              ' This is the length of the vector, representing the "strength" or intensity of the quantity it represents. It is a non-negative scalar quantity (a number with no direction).',
              style: style2,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "3) Direction :",
              style: style3,
            ),
            Text(
              'This is indicated by the arrowhead of the vector, specifying the line of action of the quantity.',
              style: style2,
            ),
            const SizedBox(height: 10),
            Container(
              height: 325,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      ' Example : ',
                      style: style4,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      " Equal vectors ",
                      style: style2,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Image.asset("images/geo/03.png")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 3),
            Text('4) Magnitude of a Vector :', style: style3),
            const SizedBox(height: 5),
            Text(
              "The magnitude of a vector is shown by vertical lines on both the sides of the given vector “|a|”. It represents the length of the vector. Mathematically, the magnitude of a vector is calculated by the help of “Pythagoras Theorem,” i.e.                       |a|= √(x2+y2)",
              style: style2,
            ),
            const SizedBox(height: 5),
            Container(
              height: 260,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'Example:',
                      style: style4,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset("images/geo/04.png")
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text('3) Unit Vector :', style: style3),
            const SizedBox(
              height: 5,
            ),
            Text(
              "A unit vector has a length (or magnitude) equal to one, which is basically used to show the direction of any vector.",
              style: style2,
            ),
            const SizedBox(height: 5),
            Container(
              height: 144,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      ' Example:',
                      style: style4,
                    ),
                    const SizedBox(height: 3),
                    const Text(
                        "If a is vector of arbitrary length and its magnitude is ||a||, then the unit vector is given by:"),
                    Image.asset("images/geo/05.png")
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

class Userbar extends StatelessWidget {
  const Userbar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 7, right: 7),
      child: Row(
        children: [
          TextButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: const Text(
                'User',
                style: TextStyle(color: Colors.black),
              )),
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.expand_more_rounded,
              )),
        ],
      ),
    );
  }
}
