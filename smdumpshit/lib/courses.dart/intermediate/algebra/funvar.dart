import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'What is the equation of the function that is graphed?',
      options: ['f(x)= - √x', 'f(x)= - √-x', 'f(x)=  √-x', 'f(x)=  √x'],
      correctIndex: 0,
      img: 'images/fct1.png'),
  Question(
      question: 'What is the vertical asymptote of the following function?',
      options: [
        'y = 3',
        'x = -2',
        'y = 2',
        'x = 3/2',
      ],
      correctIndex: 1,
      img: 'images/fct2.png'),
  Question(
      question: 'What is the domain of f(x) = 4x2?',
      options: [
        '(negative infinity, positive infinity)',
        '(zero, infinity)',
        '(zero, negative infinity)',
        '(one, infinity)'
      ],
      correctIndex: 0,
      img: 'images/random.png'),
  // Add more questions here...
];

class funct extends StatelessWidget {
  funct({super.key});
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
                        'Intro to Variables and functions',
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
                                    'assets/fcts.png', // add your image
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
            Text('1) Definition of Variables:', style: style4),
            SizedBox(
              height: 5,
            ),
            Text(
                ' a variable is a symbol or letter that represents a quantity that can change or vary. Variables are used to denote unknown or changing values in mathematical expressions, equations, and formulas. They serve as placeholders for numbers, usually we denote a variable as " x "',
                style: style2),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 200,
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
                      'Consider the equation y = 2x + 3 ',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Here, x and y are variables representing an unknown values. Depending on the value assigned to x, the value of y will vary accordingly. for instant x = 2 the value of y is y=2(2)+3=7 ',
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
              "2) Definition of Functions: ",
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'A function is a rule or relationship between two sets of values, known as the input and output. It assigns exactly one output value to each input value. In simpler terms, a function takes an input, performs a specific operation on it, and produces a corresponding output.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 220,
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
                      'Let us consider a simple linear function:',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'f(x) = 2 x + 3 ',
                      style: style2,
                    ),
                    Text(
                      'In this function, x represents the input, and f(x) represents the output. The function f  takes an input x multiplied by 2 and then adds 3 to the result.',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "3) Properties of Functions: ",
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '   Function Notation:',
              style: style3,
            ),
            Text(
              'Functions are typically denoted by a symbol, such as f, followed by parentheses containing the input variable, such as f(x).',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '   Domain and Range: ',
              style: style3,
            ),
            Text(
              'The domain of a function is the set of all possible input values for which the function is defined, while the range is the set of all possible output values.',
              style: style2,
            ),
            Container(
              height: 220,
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
                      'the function f(x) = 1/x',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'As you can see from this example x can take all real values excepts the value 0 which means that the domain D=R*(R* express the set of real numbers excepts 0);Also, f(x) belongs to the set R* which means the range : r = R*',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '   One Input, One Output: ',
              style: style3,
            ),
            Text(
              'A function assigns exactly one output value to each input value. In other words, each input has a unique output.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '   Function Composition: ',
              style: style3,
            ),
            Text(
              'Functions can be composed or combined by applying one function to the output of another function, resulting in a new function.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '   Operations with Functions:',
              style: style3,
            ),
            Text(
              'Functions can be added, subtracted, multiplied, or divided by constants or other functions, resulting in new functions with modified properties.',
              style: style2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "4) Linear functions: ",
              style: style4,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "   Definition:",
              style: style3,
            ),
            Text(
              "A linear function is a mathematical function that can be represented by a straight line",
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "   It has the general form:",
              style: style3,
            ),
            Text(
              "  f(x)=a x + b",
              style: style2,
            ),
            Text(
              "where f(x) represents the output value (often denoted as y, x represents the input value , a and b are real numbers .",
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "   Findng a and b :",
              style: style3,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "a represents the slope of the line, which determines the steepness or slant of the line. It can be found using the formula:",
              style: style2,
            ),
            Text(
              "a =(change in y)/(change in x)",
              style: style3,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "b represents the y-intercept, the point where the line intersects the y-axis. It can be found by observing the value of y when x=0.",
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "   Domain and Range:",
              style: style3,
            ),
            Text(
              "The domain of a linear function is the set of all possible input values x for which the function is defined. Since linear functions extend infinitely in both directions, their domain is typically all real numbers",
              style: style2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "The range of a linear function is the set of all possible output values y that the function can produce. For linear functions, the range is also all real numbers, as the line extends infinitely in both the positive and negative y-directions.",
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 220,
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
                      'the linear function f(x) = 2x+1',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'The slope a = 2 indicating a line rising 2 units for every 1 unit of horizontal distance .',
                      style: style2,
                    ),
                    Text(
                      'b=1(indicating the line intersects the y-axis at the point (0,1).',
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
