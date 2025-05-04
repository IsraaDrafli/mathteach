import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'What is the mathematical name we give to these angels?',
      options: ['Vertically opposite', 'Allied', 'Corresponding', 'Alternate'],
      correctIndex: 0,
      img: 'images/angles1.png'),
  Question(
      question: 'What is the mathematical name we give to these angels?',
      options: ['Vertically opposite', 'Allied', 'Corresponding', 'Alternate'],
      correctIndex: 2,
      img: 'images/angles2.png'),
  Question(
      question: 'What is the mathematical name we give to these angels?',
      options: ['Vertically opposite', 'Allied', 'Corresponding', 'Alternate'],
      correctIndex: 1,
      img: 'images/angles3.png'),
  // Add more questions here...
];

class angles extends StatelessWidget {
  angles({super.key});
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
                    'HOME / INTERMEDIATE LEVEL / Geometry  101',
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
                        ' Angles  ',
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
                                    'assets/ang01.png', // add your image
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
              "1) What are supplementary and vertical angles?  ",
              style: style4,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              '   In the figure below, the angles measuring  x° and y° are supplementary angles. Usually seen on the same side of an intersection of two lines, the measures of supplementary angles add up to 180°: x° + y° =180° .',
              style: style2,
            ),
            const SizedBox(height: 3),
            Image.asset("assets/ang01.png"),
            const SizedBox(height: 7),
            Text(
              'The angles on the opposite sides of an intersection of two lines are vertical angles. They have the same measure. The figure above shows two sets of vertical angles, one measuring x° and y° another measuring .',
              style: style2,
            ),
            const SizedBox(height: 8),
            Container(
              height: 345,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      ' Example : ',
                      style: style4,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Image.asset("assets/ang05.png"),
                    const SizedBox(height: 3),
                    Text(
                      " What is the value of in the figure above? ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text("  X° = 90°  ( Vertical angles ) ", style: style2),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "2) How are angles formed by parallel lines and transversals related? ",
              style: style4,
            ),
            const SizedBox(height: 8),
            Text(
              '  A transversal  of parallel lines   creates two sets angles with identical angle measures at the intersections. In the figure below,l1 and  l2 are parallel, l3 and is a transversal. The angles at the intersection of l1 and l3  have the same measures and are in the same arrangement as the angles at the intersection of l2 and l3 .',
              style: style2,
            ),
            const SizedBox(height: 3),
            Image.asset("assets/ang02.png"),
            const SizedBox(height: 8),
            Container(
              height: 540,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      ' Example : ',
                      style: style4,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Image.asset("assets/ang06.png"),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      " In the figure above, l and m are parallel lines. What is the value of x° ? ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "  The 105° angle and the x°  angle are supplementary angles. ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "  105° + x° = 180° ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      " 180° - 105° = 75°  ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text("  X° = 75°  ( Angles formed by parallel lines ) ",
                        style: style2),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text("3) How are the interior angles of polygons related? ",
                style: style4),
            const SizedBox(height: 3),
            Text(
              'A triangle has three interior angles. The measures of the three interior angles in a triangle add up to 180° :',
              style: style2,
            ),
            const SizedBox(height: 3),
            Image.asset("assets/ang03.png"),
            const SizedBox(height: 6),
            Image.asset("assets/ang04.png"),
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
