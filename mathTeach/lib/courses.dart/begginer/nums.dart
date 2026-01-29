import 'package:flutter/material.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';
import 'package:get/get.dart';

List<Question> questions = [
  Question(
      question:
          'What is the formula of calculating the perimeter of this shape',
      options: [
        'length x 4 ',
        '2 x pi x r',
        '2x(hight + width)',
        'Non of these'
      ],
      correctIndex: 2,
      img: 'images/quiz/perimeter1.png'),
  Question(
      question: 'Find the missing length if the perimeter=21',
      options: ['6', '4', '7', '8'],
      correctIndex: 0,
      img: 'images/quiz/perimeter2.png'),
  Question(
      question: 'Calculate the perimeter of the shape',
      options: ['115', '114', '113', '112'],
      correctIndex: 3,
      img: 'images/quiz/perimeter3.png'),
  // Add more questions here...
];

class numbs extends StatelessWidget {
  final mycontroller = Controller();

  numbs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5, left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Userbar(),
                  returnButt('HOME / BIGNNER LEVEL/ ALGEBRA101')
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Digits And Numbers',
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
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 250,
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
                                    'images/numbers.jpg', // add your image
                                  ))),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: MediaQuery.of(context).size.height - 400,
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
  final TextStyle style2 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 13, height: 2);
  final TextStyle style3 = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 13,
      height: 2,
      color: Color.fromARGB(255, 10, 139, 148));
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
            Text('The difrrence between a number and a digit:', style: style1),
            SizedBox(
              height: 7,
            ),
            Text(
                ' - A number is a basic unit of mathematics. Numbers are used for counting, measuring, and comparing amounts.',
                style: style2),
            Text(
                '- A digit is one of those symbols 0, 1, 2, 3, 4, 5, 6, 7, 8, and 9.',
                style: style2),
            Text('    Now what is the relation between a number a digit? ',
                style: style3),
            Text(
                ' A number is a combanation of one or more digits for example the number 15 is written with two digits 1 and 5  .'),
            SizedBox(
              height: 9,
            ),
            Text(
              'Place Value',
              style: style1,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'In any number , the values of a digit changes based on its position or place, for example in the number 576 the digit 5 represents 5 hundreds or 500 however in the number 56 it represnets 5 tens or 50, as you can notice the value of the 5 changed when chaning its place ',
              style: style2,
            ),
            Text(
              '- So in general, a digit in a number can represent Ones, Tens, Hundreds,Thousands, Ten Thousands, Hundred Thousands, Millions and so on',
              style: style3,
            ),
            Text(
              'You can easily determine the place value of your digit using this place value table',
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset('images/PLACE-VALUE-CHART-6-1024x673.png'),
            Text(
                'All you do is write each digit of your number in one column and here you go, you can now tell what is the place value of any digit in your number.',
                style: style2),
            SizedBox(height: 9),
            Text('Fraction', style: style1),
            SizedBox(
              height: 7,
            ),
            Text(
              'So far we only dealt with one kind of numbers which are known as "whole numbers", however, there is another kind of numbers which are "Fractons".',
              style: style2,
            ),
            Text(
              ' - Fractions are numbers that represent parts of a whole. Fractions are written as digits separated by a line, as in 3/4. The digit below the line is called the denominator. The digit above the line is called the numerator. In reading a fraction, the numerator is stated first. For example, 3/4 is read as “three-fourths.” Fractions can be shown on a number line, too.',
              style: style2,
            ),
            Text(
              'Decimals',
              style: style3,
            ),
            Text(
                'Fractions can also be written in a form called decimals. Decimals are written using the digits (0–9) along with a dot called a decimal point. A fraction can be changed to a decimal by dividing the numerator by the denominator. In this way, 3/4 can be changed to the decimal 0.75.',
                style: style2),
            Text(
              'Including decimals we can extend our place value table even more so we get:',
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset('images/PLACE-VALUE-CHART-7-1024x659.png'),
            SizedBox(height: 9),
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          // height: 500,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 233, 246, 246),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8, left: 15, right: 15),
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
                Text(
                  '1) 26739 is a number with 5 digits',
                  style: style2,
                ),
                Text(
                  '2)',
                  style: style2,
                ),
                Image.asset('images/exp12.png'),
                Text(
                  '3)',
                  style: style2,
                ),
                Image.asset('images/exp3.png'),
                SizedBox(
                  height: 9,
                ),
                Text(
                    '4) 1005 is a whole number, 1/2 is fractional number and 0.5 is its decimal eqevalent.')
              ],
            ),
          ),
          // add your examples here
        ),
      ),
    );
  }
}
