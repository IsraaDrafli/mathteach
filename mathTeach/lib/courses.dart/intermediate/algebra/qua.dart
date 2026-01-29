import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'If the discriminant is negative, then the quadratic has:',
      options: [
        '1 real solution ',
        '2 real solutions',
        '3 real solutions',
        'No real solutions'
      ],
      correctIndex: 3,
      img: 'images/random.png'),
  Question(
      question: 'Solve by using the quadratic formula:',
      options: [
        '-2/3, 4/5',
        '2/3, -4/5',
        '2/3, 4/5',
        '-2/3, -4/5',
      ],
      correctIndex: 3,
      img: 'images/quadratics2.png'),
  Question(
      question: 'Rewrite this quadratic in factored form:',
      options: [
        '(x - 4)(x + 4)',
        '(x - 4)(x - 4) ',
        '(x + 4) (x + 4) ',
        '(x - 8)(x + 2) '
      ],
      correctIndex: 0,
      img: 'images/quadratics3.png'),
  // Add more questions here...
];

class quad extends StatelessWidget {
  quad({super.key});
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
                        'Quadratics',
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
                                    'images/quadratics.png', // add your image
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
  final TextStyle style6 = TextStyle(
    fontWeight: FontWeight.w700,
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
            Text('1) Introduction:', style: style4),
            SizedBox(
              height: 5,
            ),
            Text(
                'Quadratics can be defined as a polynomial equation of a second degree, which implies that it comprises a minimum of one term that is squared. It is also called quadratic equations. The general form of the quadratic equation is:',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text(
              "ax² + bx + c = 0 ",
              style: style6,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "2) What is Quadratic Equation? ",
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'The polynomial equation whose highest degree is two is called a quadratic equation or sometimes just quadratics. It is expressed in the form of:',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "ax² + bx + c = 0 ",
              style: style6,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "where x is the unknown variable and a, b and c are the constant terms or what we call quadratic coefficients with a ≠ 0!.  ",
              style: style6,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'example:',
                      style: style4,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'x² + 2x +1 is a quadratic or quadratic equation.',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '5x+7=0 this equation cannot be called a quadratic equation because a=0.',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "3) Standard Form of Quadratic Equation: ",
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Since the quadratic includes only one unknown term or variable, thus it is called univariate. The power of variable x is always non-negative integers. Hence the equation is a polynomial equation with the highest power as 2.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              " 1)Quadratic equations of the form (ax² + bx + c = 0)",
              style: style3,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'example :',
                      style: style4,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '5x² – 2x – 6 = 0',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '-x² +6x + 12 = 0',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " 2)Quadratic equations with the absence of a ‘ C ‘- a constant term.",
              style: style3,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'example:',
                      style: style4,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'x² + 2x = 0',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '-12x² + 13x = 0',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " 3)Quadratic equations in factored form",
              style: style3,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'example:',
                      style: style4,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '(x – 6)(x + 1) = 0  [ result obtained after solving is x² – 5x – 6 = 0]',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '(2x+3)(3x – 2) = 0  [result obtained after solving is 6x² + 5x – 6]',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " 4)Quadratic equations with an absence of linear co – efficient ‘ bx’",
              style: style3,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'example:',
                      style: style4,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'x² – 16 = 0',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '4x² + 81 = 0',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "4)  How to Solve Quadratic Equations?: ",
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'There are basically four methods of solving quadratic equations. They are:',
              style: style2,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "1) Factoring of Quadratics: ",
              style: style3,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Begin with a equation of the form ax² + bx + c = 0',
              style: style2,
            ),
            Text(
              'Ensure that it is set to adequate zero.',
              style: style2,
            ),
            Text(
              'Factor the left-hand side of the equation by assuming zero on the right-hand side of the equation.',
              style: style2,
            ),
            Text(
              'Assign each factor equal to zero then solve the equation in order to determine the values of x.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 160,
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
                    Text(
                      '2x²-x-6=0 ',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '(2x+3)(x-2)=0',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '2x+3=0',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'x=-3/2 or x=2',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "2) Completing the Square Method: ",
              style: style3,
            ),
            Text(
              'Let us learn this method with example.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'example:Solve 2x² – x – 1 = 0.',
              style: style6,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'First, move the constant term to the other side of the equation:2x² – x = 1',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Dividing both sides by 2: x²– x/2 = ½ ',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Add the square of half of the coefficient of x, (b/2a)2, on both the sides, i.e: 1/16x² – x/2 + 1/16 = ½ + 1/16',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Now we can factor the right side:(x-¼)2 = 9/16 = (¾)2 ',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Taking root on both sides:X – ¼ = ±3/4 ',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Add ¼ on both sides:X = ¼ ± ¾ ',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Therefore:X = ¼ + ¾ = 4/4 = 1 or X = ¼ – ¾ = -2/4 = -½  ',
              style: style2,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "3) Using Quadratic Formula:",
              style: style3,
            ),
            Text(
              'For the given Quadratic equation of the form, ax² + bx + c = 0 Therefore the roots of the given equation can be found by:',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 100,
              width: 320,
              child: Image.asset(
                'images/formula.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "where ± (one plus and one minus) represent two distinct roots of the given equation.",
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 200,
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
                      'Solve 3x² – 5x + 2 = 0.',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Using the quadratic formula:',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'x = [-(-5)±√(-5)²-4x3x2]/2x3',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '(5 ± 1)/6',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'x = 1 or x = 2/3',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "4) Taking the Square Root: ",
              style: style3,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'We can use this method for the equations such as:',
              style: style2,
            ),
            Text(
              'x² + a² = 0',
              style: style3,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 250,
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
                      'Solve x² – 50 = 0.',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'x² – 50 = 0',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'x² = 50',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Taking the roots both sides:',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '√x² = ±√50',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'x = ±√(2 x 5 x 5)',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'x = ±5√2',
                      style: style2,
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
