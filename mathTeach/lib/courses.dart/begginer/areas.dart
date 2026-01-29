import 'package:flutter/material.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';
import 'package:get/get.dart';

List<Question> questions = [
  Question(
      question: 'What is the formula of calculating the area of this shape',
      options: [
        'length x 4 ',
        '2x(hight + width)',
        'hight x width',
        'Non of these'
      ],
      correctIndex: 2,
      img: 'images/quiz/perimeter1.png'),
  Question(
      question: 'Find the area',
      options: ['36', '34', '26', '37'],
      correctIndex: 0,
      img: 'images/quiz/perimeter2.png'),
  Question(
      question: 'Calculate the area of the shape if MC=24cm, MB=10cm',
      options: ['1000', '740', '720', '960'],
      correctIndex: 3,
      img: 'images/quiz/perimeter3.png'),
  // Add more questions here...
];

class areacourse extends StatelessWidget {
  areacourse({super.key});
  final mycontroller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Userbar(), returnButt('HOME / BIGNNER LEVEL/ ALGEBRA101')],
        ),
      ),
      SizedBox(
        height: 6,
      ),
      Padding(
          padding: EdgeInsets.only(left: 30, right: 50),
          child: Expanded(
            child: Column(children: [
              Row(
                children: [
                  Text(
                    'Basics of Areas',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: areas(),
              )
            ]),
          ))
    ])));
  }
}

class areas extends StatelessWidget {
  const areas({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 650,
        width: double.maxFinite,
        child: Stack(children: [
          Container(
            child: Image.asset(
              'images/kd.jpg',
              fit: BoxFit.cover,
            ),
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
          ),
          Positioned(
            bottom: 2,
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 100.0,
                        //spreadRadius: 0.5,
                        offset: Offset(0, 2))
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                          width: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 13,
                          ),
                          child: Text(
                            'Introduction',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Understanding the concept of area is crucial in various fields, from geometry to real-world applications. In simple terms, area refers to the amount of space a shape covers in a two-dimensional plane",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 30,
                                ),
                                child: Text(
                                  'Definition',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Text(
                                "The definition of area in mathematics refers to the measure of the size of a two-dimensional surface or region. It quantifies the amount of space enclosed by a shape in a plane. Essentially, area answers the question: 'How much space does this shape cover?' . It is typically expressed in square units, such as square meters (m²) or square centimeters (cm²) .",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 30,
                                ),
                                child: Text(
                                  'Area of Different Shapes',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 30,
                                ),
                                child: Text(
                                  'area of a rectungal ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                "  Rectangul is a four-sided shape having length and width .",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Container(
                                  child: Image.asset(
                                    'images/Parallelogramme3.png',
                                    fit: BoxFit.cover,
                                  ),
                                  height: 150,
                                  width: 300,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Text(
                                "Definition: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "  The area of a rectangle is the product of its length and width.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "formula: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "  Area= Length × width",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 30,
                                ),
                                child: Text(
                                  'area of square',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Text(
                                "  Square is a four-sided shape having the same length ; It is a particular case of a rectungal having length = width",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Container(
                                  child: Image.asset(
                                    'images/71348_s.gif',
                                    fit: BoxFit.cover,
                                  ),
                                  height: 189,
                                  width: 300,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Text(
                                "Definition: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "  The area of a square is the square of its side length.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "formula: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "  Area=Side Length × Side Length",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 30,
                                ),
                                child: Text(
                                  'area of a triangle ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                "  Triangle is a three-sided shape having three lengths and three angles .",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Container(
                                  child: Image.asset(
                                    'images/m01-21.gif',
                                    fit: BoxFit.cover,
                                  ),
                                  height: 180,
                                  width: 300,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Text(
                                "Definition: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "  The area of a triangle is half the product of one of the lengths  and its perpuendicular height. ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "  And according to the figure above :  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "         area =1/2 × AB × CD  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "formula: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "  Area= 1/2 × Length × perpendicular height  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "particular case : ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                " when the triangle is right triangle then :  Area= 1/2 × hight × base  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 30,
                                ),
                                child: Text(
                                  'area of a circle',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Text(
                                "A circle is a geometric shape consisting of all points in a plane that are equidistant from a fixed point called the center",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Container(
                                  child: Image.asset(
                                    'images/circle.png',
                                    fit: BoxFit.cover,
                                  ),
                                  height: 299,
                                  width: 300,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Text(
                                "Definition: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "The area of a circle is the product of pi (π) and the square of its radius.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "formula: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "  Area=π × Radius × Radius",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                                width: 1,
                              ),
                              SizedBox(
                                height: 15,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 30,
                                ),
                                child: Text(
                                  'Area of Parallelogram',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Container(
                                  child: Image.asset(
                                    'images/Parallelogram.gif',
                                    fit: BoxFit.cover,
                                  ),
                                  height: 150,
                                  width: 300,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Text(
                                "Definition: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                " The area of a parallelogram is the product of its base and height.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "formula: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "  Area = Base × Height",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 30,
                                ),
                                child: Text(
                                  'Area of Trapezoid',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Text(
                                " A trapezoid is a quadrilateral with at least one pair of parallel sides. The parallel sides are called the bases, and the non-parallel sides are called the legs.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Container(
                                  child: Image.asset(
                                    'images/TRAP.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                  height: 170,
                                  width: 300,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 1,
                              ),
                              Text(
                                "Definition: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                " The area of a trapezoid is half the product of the sum of its parallel sides and its height.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "formula: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                                width: 1,
                              ),
                              Text(
                                "  Area=Side 1/2 × (Sum of Parallel Sides)×Height",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                                width: 1,
                              ),
                              SizedBox(
                                height: 15,
                                width: 1,
                              ),
                              SizedBox(
                                height: 10,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 233, 246, 246),
                                      borderRadius: BorderRadius.circular(8)),
                                  height: 250,
                                  width: 310,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 1,
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Examples : ",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromARGB(
                                                  255, 10, 139, 148),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                            width: 1,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '1) ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13,
                                                  color: Color.fromRGBO(
                                                      10, 139, 148, 1),
                                                ),
                                              ),
                                              Text(
                                                "the area of a rectangle with hight 3 cm",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                              "and width 5 is : 3 × 5 (cm*cm)= 15 (cm*cm)",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                              )),
                                          SizedBox(
                                            height: 5,
                                            width: 1,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '2) ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13,
                                                  color: Color.fromRGBO(
                                                      10, 139, 148, 1),
                                                ),
                                              ),
                                              Text(
                                                "the area of a right triangle with base",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            " 9 cm and height 4 cm is :",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                            width: 1,
                                          ),
                                          Text(
                                            "       1/2 × 4 × 9 cm= 18 cm*cm",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                            width: 1,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '3) ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13,
                                                  color: Color.fromRGBO(
                                                      10, 139, 148, 1),
                                                ),
                                              ),
                                              Text(
                                                "the area of a circle with radius 4 cm is :",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                  color: Color.fromRGBO(
                                                      38, 50, 56, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "       π × 4 × 4 = 50.24 cm*cm",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              color:
                                                  Color.fromRGBO(38, 50, 56, 1),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                            width: 1,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '4) ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13,
                                                  color: Color.fromRGBO(
                                                      10, 139, 148, 1),
                                                ),
                                              ),
                                              Text(
                                                "the area of a Trapezoid with parallel sides",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                  color: Color.fromRGBO(
                                                      38, 50, 56, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "4 cm and 3 cm and a height of 4cm is : ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              color:
                                                  Color.fromRGBO(38, 50, 56, 1),
                                            ),
                                          ),
                                          Text(
                                            "      1/2 ×(4 + 3) × 4 = 14 cm*cm",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              color:
                                                  Color.fromRGBO(38, 50, 56, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: 5,
                              ),
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(98),
                                  child: Container(
                                    height: 42,
                                    width: 270,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(10, 139, 148, 1),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => QuizScreen(
                                                questions: questions,
                                              ),
                                            ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 32.0, vertical: 16.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        backgroundColor:
                                            Color.fromARGB(255, 14, 109, 101),
                                        textStyle: TextStyle(fontSize: 16.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Test Your Knowledge',
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                                width: 5,
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
                      ]),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
