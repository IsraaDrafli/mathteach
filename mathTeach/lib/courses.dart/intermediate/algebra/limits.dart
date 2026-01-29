import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'What is the limit?',
      options: [
        'Infinity',
        '20',
        '12',
        'DNE',
      ],
      correctIndex: 1,
      img: 'images/limits1.png'),
  Question(
      question: 'What is the limit?',
      options: [
        '5/2',
        '-2/3',
        'Infinity',
        '17/3',
      ],
      correctIndex: 3,
      img: 'images/limits2.png'),
  Question(
      question:
          'What is the limit of the function as x approaches -4 from the left?',
      options: [
        '2',
        'DNE',
        '-4',
        '-2',
      ],
      correctIndex: 0,
      img: 'images/limits3.png'),
  // Add more questions here...
];

class limits extends StatelessWidget {
  limits({super.key});
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
                        'Limits',
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
                                    'assets/JDPQnHbnRWuBfcO2efDoyw.png', // add your image
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
  final TextStyle style6 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 17,
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
            Text('1) Introduction : ', style: style1),
            Text(
                ' In mathematics, particularly in calculus, the concept of limits plays a crucial role in understanding the behavior of functions as they approach certain points. ',
                style: style2),
            SizedBox(
              height: 5,
            ),
            Text('2)  Definition of Limits :', style: style1),
            Text(
                'The limit of a function f(x) as x approaches a specific value c is the value that f(x) approaches as x gets arbitrarily close to c this is denoted as : ',
                style: style2),
            Container(
              child: Image.asset(
                'assets/OIP.jpg',
                fit: BoxFit.cover,
              ),
              height: 190,
              width: 300,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'example:',
                      style: style3,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/ex.png',
                        fit: BoxFit.cover,
                      ),
                      height: 130,
                      width: 130,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
                'If the function f(x) approaches the value L (L is real number) as x approaches c ,then the limit exists and is equal to L ',
                style: style2),
            Text('3)  Properties of Limits :', style: style1),
            Text('1) sum : ', style: style4),
            Container(
              child: Image.asset(
                'assets/sumrel.jpg',
                fit: BoxFit.cover,
              ),
              height: 190,
              width: 300,
            ),
            Text('2) Scaling : ', style: style4),
            Container(
              child: Image.asset(
                'assets/scalingrel.jpg',
                fit: BoxFit.cover,
              ),
              height: 190,
              width: 300,
            ),
            Text('3) Product : ', style: style4),
            Container(
              child: Image.asset(
                'assets/productrel.jpg',
                fit: BoxFit.cover,
              ),
              height: 190,
              width: 300,
            ),
            Text('4) quotient : ', style: style4),
            Container(
              child: Image.asset(
                'assets/qoutionrel.jpg',
                fit: BoxFit.cover,
              ),
              height: 190,
              width: 300,
            ),
            Text('4)  Indeterminate Forms:', style: style1),
            Text(
                'Indeterminate forms occur when the limit cannot be determined by direct substitution and require further analysis. Common indeterminate forms include',
                style: style2),
            Text('0/0', style: style4),
            Text(
                'This indeterminate form arises when both the numerator and the denominator of a fraction approach zero as x approaches a certain value .It indicates that the rate at which the numerator approaches zero is compatible with the rate at which the denominator approaches zero, and further analysis is needed to determine the actual limit.',
                style: style2),
            Text('∞/∞', style: style4),
            Text(
                'This indeterminate form occurs when both the numerator and the denominator of a fraction grow without bound as x approaches a certain value .It signifies that the relative growth rates of the numerator and denominator are not clear, requiring additional techniques to evaluate the limit.',
                style: style2),
            Text('∞ - ∞', style: style4),
            Text(
                'This form arises when two functions approach positive or negative infinity, but their difference remains indeterminate.It suggests that the rates at which the functions grow or shrink cancel each other out, necessitating alternative methods to determine the limit.',
                style: style2),
            Text('0 x ∞', style: style4),
            Text(
                'Here, a product of one quantity approaching zero and another approaching infinity results in an indeterminate form.It indicates that the balance between the factors is uncertain and further analysis, such as factoring or manipulation, is necessary to evaluate the limit.',
                style: style2),
            Text('∞^0', style: style4),
            Text(
                'This form arises when an expression tends to infinity raised to the power of zero, which is inherently ambiguous.It suggests that the behavior of the expression is highly sensitive to small changes, often requiring techniques like L"Hôpital"s Rule or series expansions for evaluation.',
                style: style2),
            Text('1^∞', style: style4),
            Text(
                'Here, an expression takes the form of one raised to the power of infinity, which is not immediately determinable.It implies that the base approaches a limit of 1 while the exponent tends to infinity, necessitating further analysis to ascertain the limit.',
                style: style2),
            Text('5)Remove Indetermination:', style: style1),
            Text('1) Factoring:', style: style4),
            Text(
                'Sometimes, factoring the expression can simplify the limit and allow for cancellation of common terms, leading to a determinate form that can be evaluated more easily.',
                style: style2),
            Text('   example', style: style3),
            Container(
              child: Image.asset(
                'assets/Screenshot 2024-04-09 043227.png',
                fit: BoxFit.cover,
              ),
              height: 250,
              width: 300,
            ),
            SizedBox(
              height: 6,
            ),
            Text('2) Rationalizing:', style: style4),
            Text(
                'Rationalizing the expression involves manipulating it to remove radicals from the denominator or to simplify complex fractions. This can often help in transforming the indeterminate form into a form that can be evaluated directly.',
                style: style2),
            Text('   example', style: style3),
            Container(
              child: Image.asset(
                'assets/und2.png',
                fit: BoxFit.cover,
              ),
              height: 250,
              width: 300,
            ),
            SizedBox(
              height: 6,
            ),
            Text('3) Conjugate Pairs:', style: style4),
            Text(
                'For limits involving square roots, multiplying the expression by the conjugate of the denominator can eliminate square roots and simplify the expression.',
                style: style2),
            Text('   example', style: style3),
            Container(
              child: Image.asset(
                'assets/und3.png',
                fit: BoxFit.cover,
              ),
              height: 250,
              width: 300,
            ),
            SizedBox(
              height: 6,
            ),
            Text('6) Squeeze Theorem :', style: style1),
            Container(
              child: Image.asset(
                'assets/sqz.png',
                fit: BoxFit.cover,
              ),
              height: 250,
              width: 300,
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
