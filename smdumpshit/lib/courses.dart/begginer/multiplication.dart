import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'What is the result of this multiplication',
      options: ['35', '40', '45', '50'],
      correctIndex: 0,
      img: 'images/quiz/multi1.png'),
  Question(
      question: 'What is the result of this division',
      options: ['5', '6', '7', '8'],
      correctIndex: 1,
      img: 'images/quiz/multi2.png'),
  Question(
      question: 'choose the right answer',
      options: ['16', '7', '4', '1'],
      correctIndex: 2,
      img: 'images/quiz/multi3.png'),
  // Add more questions here...
];

class multi extends StatelessWidget {
  multi({super.key});
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
                returnButt('HOME / BIGNNER LEVEL/ ALGEBRA101')
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
                        'Multiplication and division',
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
                                    'images/kdd.png', // add your image
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
            Text('Multiplication and division', style: style1),
            SizedBox(
              height: 10,
            ),
            Text('1) Introduction to multiplication', style: style4),
            SizedBox(
              height: 3,
            ),
            Text(
                'Multiplication is a fundamental operation in mathematics used to find the result of combining equal groups or adding a number repeatedly.',
                style: style2),
            SizedBox(
              height: 5,
            ),
            Text(
              '2) Definition of multiplication',
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Multiplication is the process of repeatedly adding a number to itself a certain number of times. It represents the total quantity when equal groups are combined. In mathematical notation, its denoted by the symbol " × " or by using parentheses.   For example, 3×4 means adding 3 to itself 4 times.',
              style: style2,
            ),
            Example1(),
            Text(
              '3) Connection Between Multiplication and Division',
              style: style4,
            ),
            Text(
              "If we start with 12 and divide it into groups of 3, we find that there are 4 such groups.So, 12÷3=4.",
              style: style2,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Here, division can be seen as the process of undoing the multiplication. We're finding out how many times one number (the divisor) can be subtracted from another number (the dividend) before reaching zero.",
              style: style2,
            )
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
        height: 200,
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
                    '12÷3=4: We are dividing 12 into ',
                    style: style2,
                  ),
                ],
              ),
              Text(
                '   groups of 3,resulting in 4 such groups.',
                style: style2,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('2) ', style: style4),
                  Text(
                    '15÷5=3: When we divide 15 into ',
                    style: style2,
                  ),
                ],
              ),
              Text(
                '   groups of 5,we get 3 groups.',
                style: style2,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('3) ', style: style4),
                  Text(
                    '20÷4=5: Similarly, dividing 20 into groups',
                    style: style2,
                  ),
                ],
              ),
              Text(
                '   of 4 gives us 5 groups.',
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

class Example1 extends StatelessWidget {
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
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 233, 246, 246),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 8, bottom: 8, right: 15, left: 20),
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
                  '2×3=6: We add 2 to itself 3 times,',
                  style: style2,
                ),
              ],
            ),
            Text(
              '   which equals 6.',
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('2) ', style: style4),
                Text(
                  '4×5=20: Adding 4 to itself 5 times ,',
                  style: style2,
                ),
              ],
            ),
            Text(
              '   gives us 20.',
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('3) ', style: style4),
                Text(
                  '6×2=12: Here,adding 6 to itself 2 times,',
                  style: style2,
                ),
              ],
            ),
            Text(
              '   resulting in 12.',
              style: style2,
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
      // add your examples here
    );
  }
}
