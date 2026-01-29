import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'Find the value of x',
      options: ['7', '8', '9', '10'],
      correctIndex: 3,
      img: 'images/phet1.png'),
  Question(
      question:
          'The sides of a triangle are 5, 12 & 13 units. Check if it has a right angle or not',
      options: [
        'Yes it has 1 right angle',
        'It has 2 right angles',
        'No it has not',
        'Non of these'
      ],
      correctIndex: 0,
      img: 'images/random.png'),
  Question(
      question:
          'Given the side of a square to be 4 cm. Find the length of the diagonal.',
      options: ['4√2', '2√4', '2√3', '3√2'],
      correctIndex: 1,
      img: 'images/phet3.png'),
  // Add more questions here...
];

class pytha extends StatelessWidget {
  pytha({super.key});
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
                        ' Pythagoras Theorem ',
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
                                    'assets/ph01.png', // add your image
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
              "1) Pythagoras Theorem : ",
              style: style4,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              '  The Pythagorean Theorem states that in a right triangle, the square of the length of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the lengths of the other two sides.',
              style: style2,
            ),
            const SizedBox(height: 3),
            Text(
              "2) History: ",
              style: style4,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
                'The theorem is named after a Greek Mathematician called Pythagoras.',
                style: style2),
            const SizedBox(height: 3),
            Image.asset("assets/ph02.png"),
            const SizedBox(
              height: 18,
            ),
            Text("3)  Pythagoras Theorem Formula: ", style: style4),
            const SizedBox(
              height: 8,
            ),
            Text("Consider the triangle given above:", style: style2),
            const SizedBox(height: 3),
            Text(
              '   Where “a” is the perpendicular,',
              style: style2,
            ),
            const SizedBox(height: 3),
            Text("  “b” is the base,", style: style2),
            const SizedBox(height: 3),
            Text(
              '  “c” is the hypotenuse.',
              style: style2,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "According to the definition, the Pythagoras Theorem formula is given as:",
              style: style3,
            ),
            const SizedBox(height: 5),
            Image.asset("assets/ph03.png"),
            const SizedBox(height: 10),
            Container(
              height: 418,
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
                      " Consider a right triangle, given below: ",
                      style: style2,
                    ),
                    const SizedBox(height: 5),
                    Image.asset(
                      "assets/ph04.png",
                      height: 90,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      " Find the value of x. ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      " X is the side opposite to the right angle, hence it is a hypotenuse. Now, by the theorem we know : ",
                      style: style2,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      " Hypotenuse^2 = Base^2 + Perpendicular^2  (Where ^ is the square root ) ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      " x^2 = 8^2 + 6^2 ",
                      style: style2,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      " x^2 = 64+36 = 100 ",
                      style: style2,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      " x = √100 = 10 ",
                      style: style2,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      " Therefore, the value of x is 10.",
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 3),
            Text('4) Pythagoras Theorem Proof :', style: style3),
            const SizedBox(height: 5),
            Text(
              "Given: A right-angled triangle ABC, right-angled at B.To Prove- AC2 = AB2 + BC2 Construction: Draw a perpendicular BD meeting AC at D.",
              style: style2,
            ),
            const SizedBox(height: 5),
            Image.asset(
              "assets/ph05.png",
              height: 300,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "  Proof : We know, △ADB ~ △ABC , Therefore :  ",
              style: style2,
            ),
            const SizedBox(height: 5),
            Image.asset("assets/ph06.png"),
            const SizedBox(height: 5),
            Text(
              "  Or, AB^2 = AD × AC …………………………………(1) ",
              style: style2,
            ),
            const SizedBox(height: 5),
            Text(
              "  Also, △BDC ~△ABC , Therefore :  ",
              style: style2,
            ),
            const SizedBox(height: 5),
            Image.asset("assets/ph07.png"),
            const SizedBox(height: 5),
            Text(
              " Or, BC2= CD × AC ……………………………………(2) ",
              style: style2,
            ),
            const SizedBox(height: 5),
            Text(
              "  Adding the equations (1) and (2) we get, ",
              style: style2,
            ),
            const SizedBox(height: 5),
            Text(
              " AB^2 + BC^2 = AD × AC + CD × AC ",
              style: style2,
            ),
            const SizedBox(height: 5),
            Text(
              "  AB^2 + BC^2 = AC (AD + CD) , Since, AD + CD = AC",
              style: style2,
            ),
            const SizedBox(height: 5),
            Text(
              "  Therefore : AC^2 = AB^2 + BC^2 ",
              style: style2,
            ),
            const SizedBox(height: 5),
            Text(
              "  Hence, the Pythagorean theorem is proved. ",
              style: style2,
            ),
            const SizedBox(height: 5),
            Text(
              " Note: Pythagorean theorem is only applicable to Right-Angled triangle. ",
              style: style4,
            ),
            const SizedBox(height: 5),
            Container(
              height: 438,
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
                        "The sides of a triangle are 5, 12 & 13 units. Check if it has a right angle or not."),
                    const SizedBox(height: 3),
                    Text(
                      "  From Pythagoras Theorem, we have ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "  Perpendicular^2 + Base^2 = Hypotenuse^2 ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "  P^2 + B^2 = H^2  , Let Perpendicular (P) = 12 units, Base (B)= 5 units , Hypotenuse (H) = 13 units {since it is the longest side measure}",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      " LHS = P^2 + B^2",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "  ⇒ 12^2 + 5^2 ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "  ⇒ 144 + 25 = 169 , so LHS = 169 ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      " Now RHS = H^2 ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "  13^2 = 169 , so RHS = 169 ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "  So L.H.S. = R.H.S. ",
                      style: style2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      " Therefore, the angle opposite to the 13 units side will be a right angle. ",
                      style: style4,
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
