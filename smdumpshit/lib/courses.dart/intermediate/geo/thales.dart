import 'package:flutter/material.dart';
import 'package:smdumpshit/data.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';

class ThalesCourse extends StatelessWidget {
  ThalesCourse({super.key});
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
                    'HOME / INTERMEDIATE  LEVEL/ GEOMETRY101',
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
                        "Thales' Theorem",
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
                                    'images/thalescover.jpg', // add your image
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
                                  Content1(),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  Example1(),
                                  Content2(),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  Example2(),
                                  SizedBox(
                                    height: 22,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      height: 130,
                                      child: Column(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                                minimumSize: MaterialStateProperty.all(Size(
                                                    MediaQuery.of(context).size.width *
                                                        0.75,
                                                    42)),
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        const Color.fromRGBO(
                                                            10, 139, 148, 1)),
                                                foregroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.white),
                                                shape: MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(15)))),
                                            child: Text('Test Your Knowledge'),
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                          Comments(),
                                        ],
                                      ),
                                    ),
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

class Content1 extends StatelessWidget {
  final TextStyle style1 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: Color.fromARGB(255, 10, 139, 148));
  final TextStyle style2 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 13, height: 2);
  final TextStyle style3 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Colors.black,
  );
  final TextStyle style4 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 13,
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
            Text(
              'Introduction',
              style: style1,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Thales\' Theorem, also known as the "Basic Proportionality theorem", is one of the fundamental theorems in geometry, it was introduced by Greek Mathematician and philosopher Thales. In this course, we will get to know and understand the Thales theorem as well as the converse of the Thales theorem.',
              style: style2,
            ),
            Text(
              "Thales' Theorem",
              style: style1,
            ),
            Text(
              ' - Statement:',
              style: style3,
            ),
            Text(
              "Thales' Theorem states that:",
              style: style2,
            ),
            Text(
              '"If a line is drawn parallel to one side of a triangle intersecting the other two sides in distinct points, then the other two sides are divided in the same ratio"',
              style: style4,
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Image.asset('images/Thalesstate.png', fit: BoxFit.fill),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'The ratios:',
              style: style4,
            ),
            Text(
              'AD/DB =AE/EC=DE/BC',
              style: style2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' - Proof:',
              style: style3,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 460,
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 233, 246, 246), width: 3)),
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Image.asset('images/Proof1.png', fit: BoxFit.fill),
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child:
                        Image.asset('images/proofimg1.png', fit: BoxFit.fill),
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

class Content2 extends StatelessWidget {
  final TextStyle style1 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: Color.fromARGB(255, 10, 139, 148));
  final TextStyle style2 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 13, height: 2);
  final TextStyle style3 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Colors.black,
  );
  final TextStyle style4 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 13,
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
            Text(
              "The Converse of Thales' Theorem ",
              style: style1,
            ),
            Text(
              'Statement:',
              style: style3,
            ),
            Text(
              "The Converse of Thales' Theorem states that:",
              style: style2,
            ),
            Text(
              '"If a line divides any two sides of a triangle in the same ratio, then the line is parallel to the third side",',
              style: style4,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' - Proof:',
              style: style3,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 700,
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 233, 246, 246), width: 3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('  To prove that MN is parallel to BC  we have:'),
                  Container(
                      height: 50,
                      width: 150,
                      child: Image.asset('images/proof21.png')),
                  Text(
                    '  Constriction: Drawn a line MP parallel to BC',
                    style: style2,
                  ),
                  Text(
                    "  Then from Thales' Theorem ",
                    style: style4,
                  ),
                  Container(
                      height: 50,
                      width: 150,
                      child: Image.asset('images/proof22.png')),
                  Text(
                    '  from (i) and (ii):',
                    style: style2,
                  ),
                  Container(
                      height: 170,
                      width: 150,
                      child: Image.asset(
                        'images/proof23.png',
                        fit: BoxFit.fill,
                      )),
                  Text(
                    '  Which shows that point P coincide with point N,',
                    style: style2,
                  ),
                  Text(
                    '  that means P and A are one common point then:',
                    style: style2,
                  ),
                  Text(
                    '      MN is indeed prallel to BC',
                    style: style4,
                  ),
                  Container(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      'images/proof2img.png',
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
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: 400,
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
                "Example : ",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 10, 139, 148),
                ),
              ),
              Text(
                'Consider the triangle ABC shown below with the line (DE) drawn in prallel to the side BC, intersecting sides AB and AC at points D and E respectively then: ',
                style: style2,
              ),
              Text(
                'AD/DB = AE/EC ',
                style: style2,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset('images/Thales1.png', fit: BoxFit.fill)),
            ],
          ),
        ),
      ),
    );
  }
}

class Example2 extends StatelessWidget {
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
        height: 480,
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
                "Example : ",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 10, 139, 148),
                ),
              ),
              Text(
                'Consider the triangle ABC shown below, A line DE intersects sides AB and AC such that it divides them proportionally. Specifically, AD/DB = AE/EC ',
                style: style2,
              ),
              Text(
                'By the converse of Thales theorem, since the line DE intersects sides AB and AC proportionally, DE must be parallel to the third side BC. ',
                style: style2,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset('images/Thales1.png', fit: BoxFit.fill)),
            ],
          ),
        ),
      ),
    );
  }
}
