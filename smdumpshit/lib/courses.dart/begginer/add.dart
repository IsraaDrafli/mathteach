import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';

import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'Choose the right answer',
      options: ['1', '4', '5', '6'],
      correctIndex: 3,
      img: 'images/quiz/addition1.jpg'),
  Question(
      question: 'Choose the right answer',
      options: ['7', '6', '3', '4'],
      correctIndex: 2,
      img: 'images/quiz/addition2.jpg'),
  Question(
      question: 'choose the right answer',
      options: ['6', '5', '4', '2'],
      correctIndex: 1,
      img: 'images/quiz/addition3.jpg'),
  // Add more questions here...
];

class add extends StatelessWidget {
  add({super.key});
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
                        'Addition and substraction',
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
                    height: MediaQuery.of(context).size.height - 300,
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
                                    'images/img01.jpg', // add your image
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
            Text('Addition', style: style1),
            SizedBox(
              height: 10,
            ),
            Text('1) Definition of Addition:', style: style4),
            SizedBox(
              height: 5,
            ),
            Text(
                'Addition is the process of combining two or more numbers to find their total or sum. We use the plus sign (+) to represent addition. For example, in the expression 2 + 3, we are adding 2 and 3 together to get 5.',
                style: style2),
            SizedBox(height: 3),
            Container(
              child: Image.asset(
                'images/img02.jpg',
                fit: BoxFit.fill,
              ),
              height: 190,
              width: 300,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "2) Properties of Addition: ",
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '1)Commutative Property:',
              style: style5,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '   This property states that changing the order of the numbers being added does not change the sum. For example, 2 + 3 is the same as 3 + 2. Both equal 5.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '2)Associative Property: ',
              style: style5,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '   This property states that the grouping of numbers being added does not change the sum. For example, (2 + 3) + 4 is the same as 2 + (3 + 4). Both equal 9.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '3)Identity Property:',
              style: style5,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '   The identity element for addition is 0. Adding 0 to any number does not change its value. For example, 5 + 0 is equal to 5.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text('Substraction', style: style1),
            SizedBox(
              height: 10,
            ),
            Text('1) Definition of substraction:', style: style4),
            SizedBox(
              height: 5,
            ),
            Text(
                'Subtraction is the process of taking one number away from another to find the difference. We use the minus sign (-) to represent subtraction. For example, in the expression 5 - 2, we are subtracting 2 from 5 to get 3.',
                style: style2),
            SizedBox(height: 3),
            Container(
              child: Image.asset(
                'images/img03.png',
                fit: BoxFit.fill,
              ),
              height: 150,
              width: 300,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "2) Properties of Subtraction: ",
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '1)Inverse of addition:',
              style: style5,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Subtraction undoes addition. If we add and then subtract the same number, we get back to where we started. For example, 5 + 3 = 8, and then 8 - 3 = 5.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '2)Subtraction is Not Commutative: ',
              style: style5,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Unlike addition, the order of numbers matters in subtraction. For example, 5 - 3 is not the same as 3 - 5. They give different results (2 and -2, respectively).',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '3)Identity Property:',
              style: style5,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'When we subtract 0 from a number, we get the same number back. For example, 7 - 0 is equal to 7.',
              style: style2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "priorities :",
              style: style4,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "  Always give priority to the first operation. If it is ( + ) then the priority is addition. If it is ( - ) then the priority is subtraction.",
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
        height: 160,
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
                    ' 3 + 2 = 5 ',
                    style: style2,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text('2) ', style: style4),
                  Text(
                    ' 3 - 2 = 1',
                    style: style2,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text('3) ', style: style4),
                  Text(
                    '10 - 2  + 3 =  11',
                    style: style2,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
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
