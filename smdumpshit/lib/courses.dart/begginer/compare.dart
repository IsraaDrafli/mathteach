import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'Choose the right answer',
      options: ['Less than ', 'Greater than', 'Equal', 'Non of these'],
      correctIndex: 0,
      img: 'images/quiz/comparison1.png'),
  Question(
      question: 'Choose the right answer',
      options: ['+', '<', '>', 'x'],
      correctIndex: 1,
      img: 'images/quiz/comparison2.png'),
  Question(
      question: 'choose the right answer',
      options: ['98', '74', '66', '51'],
      correctIndex: 3,
      img: 'images/quiz/comparison3.png'),
  // Add more questions here...
];

class compare extends StatelessWidget {
  compare({super.key});
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
                returnButt('HOME / BIGNNER LEVEL/ Algebra101')
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
                        'Comparing numbers',
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
                                    'images/img4.PNG', // add your image
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
            Text('Comparing And Ordering Numbers', style: style1),
            SizedBox(
              height: 5,
            ),
            Text(
                '  Comparing numbers is a basic concept that is used When we have two numbers or quantities to compare, then we use three basic symbols, they are:',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text(
                'Equal to , Greater than , Less than.In this course we are going to learn how to compare two numbers and what sign should be used to compare them.',
                style: style2),
            SizedBox(
              height: 5,
            ),
            Text(
              '1) Equal to :',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Color.fromARGB(255, 10, 139, 148)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                'Two numbers are equal if they have the same value;And its symbol is " = " ,for example 5 = 5',
                style: style2),
            SizedBox(height: 3),
            Container(
              child: Image.asset(
                'images/img1.PNG',
                fit: BoxFit.cover,
              ),
              height: 150,
              width: 300,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
                ' As we can see from the figure above that these two quantities of apples are equal because 8 apples is equal to 8 apples',
                style: style2),
            Text(
              "Equality properties : ",
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '   below X , Y , Z are considered as quantities or we can say they are numbers .',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'symmetric property : ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 2,
                  color: Color.fromARGB(255, 10, 139, 148)),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '  if X = Y then Y=X ',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Addition property : ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 2,
                  color: Color.fromARGB(255, 10, 139, 148)),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '  if X = Y then Y+Z=X+Z ',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Substraction property : ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 2,
                  color: Color.fromARGB(255, 10, 139, 148)),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '  if X = Y then Y-Z=X-Z ',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Multiplication property : ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 2,
                  color: Color.fromARGB(255, 10, 139, 148)),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '  if X = Y then Y×Z=X×Z ',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Division property : ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 2,
                  color: Color.fromARGB(255, 10, 139, 148)),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '  if X = Y then Y/Z=X/Z ',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Substitution property : ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 2,
                  color: Color.fromARGB(255, 10, 139, 148)),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '  if X = Y and Y= Z then X = Z ',
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '2) Greater than :',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Color.fromARGB(255, 10, 139, 148)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                'A number is greater than another number if it has a higher value;Its symbol is ">" , for example 5 is greater than 3, written as 5>3 .',
                style: style2),
            SizedBox(height: 7),
            Container(
              child: Image.asset(
                'images/img3.PNG',
                fit: BoxFit.cover,
              ),
              height: 150,
              width: 300,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                '  We can see in this figure that 8 apples is a greater quantity than 3 apples .',
                style: style2),
            SizedBox(
              height: 5,
            ),
            Text(
              '3) Less than :',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Color.fromARGB(255, 10, 139, 148)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                'A number is greater than another number if it has a lower value;Its symbol is "<" , for example 5 is less than 7, written as 5<7 .',
                style: style2),
            SizedBox(height: 7),
            Container(
              child: Image.asset(
                'images/img2.PNG',
                fit: BoxFit.cover,
              ),
              height: 150,
              width: 300,
            ),
            Text(
                '  We can see in this figure that 3 apples is a less quantity than 8 apples .',
                style: style2),
            SizedBox(
              height: 5,
            ),
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
        height: 240,
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
                    ' = 3 or also using :10 – 7 = 3',
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
                    '10>3 [10 is greater than 3] or 5+5>3',
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
                    '9<11 [9 is less than 11] or 12-3<11',
                    style: style2,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text('4) ', style: style4),
                  Text(
                    'the order of 3 , 5 and 11',
                    style: style2,
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                '   using ">" symbor is :',
                style: style2,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                '     11 > 5 > 3',
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
