import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'Drive the equation of the graph',
      options: ['y = 3x + 3', 'y = −3x + 3', 'y = −3x − 3', 'y = 3x − 3'],
      correctIndex: 2,
      img: 'images/fstdeg1.png'),
  Question(
      question:
          'Wich of the followin points does not belong to the graph of the function above',
      options: ['(0,6)', '(4,14)', '(-1,4)', '(-4,2)'],
      correctIndex: 3,
      img: 'images/fstdeg2.png'),
  Question(
      question: 'Solve the equation for x',
      options: ['1/2', '1/4', '2/3', '-1/4'],
      correctIndex: 1,
      img: 'images/fstdeg3.png'),
  // Add more questions here...
];

class power extends StatelessWidget {
  power({super.key});
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
                        'abs,powers,sqrt',
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
                                    'assets/CfWvRDf1QXGErB8ebB7FmA.png', // add your image
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
            Text('1) Absolute Value:', style: style4),
            SizedBox(
              height: 5,
            ),
            Text('  Definition:', style: style5),
            SizedBox(
              height: 3,
            ),
            Text(
                'The absolute value of a real number x, denoted as ∣x∣, represents the distance of x from the origin (0) on the number line. It is always non-negative.',
                style: style2),
            SizedBox(
              height: 5,
            ),
            Text('  Properties:', style: style5),
            SizedBox(
              height: 3,
            ),
            Text('|x| >= 0 for all x', style: style3),
            SizedBox(
              height: 5,
            ),
            Text('|x|=x for x>0', style: style3),
            SizedBox(
              height: 5,
            ),
            Text('|x|= -x for x<0', style: style3),
            SizedBox(
              height: 5,
            ),
            Text('|x y|=|x| |y|', style: style3),
            SizedBox(
              height: 5,
            ),
            Text('|x+y|<=|x|+|y|', style: style3),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 240,
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
                      '1) |3|=3 because 3 is 3 units away from 0 on the number line ',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '2) |-5|=5 because -5 is 5 units away from 0 on the number line. ',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '3) |2-7|=5 because the absolute value removes the sign. ',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            Text('2) Powers of a Number:', style: style4),
            SizedBox(
              height: 5,
            ),
            Text('  Definition:', style: style5),
            SizedBox(
              height: 3,
            ),
            Text(
                'The power of a number x raised to an exponent n, denoted as (x)^ n , represents the result of multiplying x by itself n times.',
                style: style2),
            SizedBox(
              height: 5,
            ),
            Text('  Properties:', style: style5),
            SizedBox(
              height: 3,
            ),
            Text('1) (x)^0=1 for any non-zero real number x.', style: style3),
            SizedBox(
              height: 5,
            ),
            Text('2) (x)^1=x for any real number x.', style: style3),
            SizedBox(
              height: 5,
            ),
            Text(
                '3) (x)^-n=1/(x)^n for any non-zero real number x and positive n.',
                style: style3),
            SizedBox(
              height: 5,
            ),
            Text(
                '4) (x)^n (x)^m = (x)^(n+m) for any real number x , and positive integers n and m.',
                style: style3),
            SizedBox(
              height: 5,
            ),
            Text(
                '5) ((x)^n)^m=(x)^(nm) for any real number x , and positive integers n and m.',
                style: style3),
            SizedBox(
              height: 5,
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
                      '1) 2^3=2×2×2=8. ',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '2) (-3)^4=(−3)×(−3)×(−3)×(−3)=81.',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '3) 1/4^(2) = 1/16',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            Text('3) Square Root:', style: style4),
            SizedBox(
              height: 5,
            ),
            Text('  Definition:', style: style5),
            SizedBox(
              height: 3,
            ),
            Text(
                'The square root of a non-negative real number x, denoted as √x is a value that, when multiplied by itself, gives x.',
                style: style2),
            SizedBox(
              height: 5,
            ),
            Text('  Properties:', style: style5),
            SizedBox(
              height: 3,
            ),
            Text('1)The square root of x square √(x^2) is equal to |x|',
                style: style3),
            SizedBox(
              height: 5,
            ),
            Text('2) √(x y) = √x √y', style: style3),
            SizedBox(
              height: 5,
            ),
            Text('3)√(x+y) does not equal to √x + √y', style: style3),
            SizedBox(
              height: 5,
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
                      '1) √16 = 4 because 4x4=16 . ',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '2) √25 = 4 because 5x5=25 .',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '3) √2 x √3 = √6',
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
