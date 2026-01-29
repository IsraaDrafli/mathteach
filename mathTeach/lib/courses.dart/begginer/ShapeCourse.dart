import 'package:flutter/material.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';
import 'package:get/get.dart';

List<Question> questions = [
  Question(
      question: 'Wich one of these does not have 4 sides',
      options: ['The rhombus', 'The triangle', 'The rectangle', 'The square'],
      correctIndex: 1,
      img: 'images/quiz/random.png'),
  Question(
      question: 'Wich one of these does not belong to circle properties',
      options: ['Right angle', 'Center', 'Radius', 'Diameter'],
      correctIndex: 0,
      img: 'images/quiz/random.png'),
  Question(
      question: 'Choose the commun property between the square and rhombus',
      options: [
        'Opposite sides are equal in length',
        'A circumference',
        '4 right angles',
        'All sides are equal in length'
      ],
      correctIndex: 3,
      img: 'images/quiz/random.png'),
  // Add more questions here...
];

class ShapeCourse extends StatelessWidget {
  ShapeCourse({super.key});
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
                returnButt('HOME / BIGNNER LEVEL/ GEOMETRY101')
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
                        'Shapes ',
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
                                    'images/shapescover.jpg', // add your image
                                  ))),
                        ),
                        Positioned(
                          bottom: 2,
                          child: Container(
                            height: double.maxFinite,
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
  final TextStyle style2 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 13, height: 2);
  final TextStyle style3 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14,
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
              'Shapes are all around us! if you look around you, you will sure find all kinds of shapes, circles, triangles, rectangles...etc . In this course we will learn about the diffrent propreties of those shapes and what make each one of them special',
              style: style2,
            ),
            SizedBox(height: 9),
            Text('Basic Shapes ', style: style1),
            SizedBox(
              height: 2,
            ),
            Text(
              '1) The Circle ',
              style: style3,
            ),
            Text(
              'If you take a point and draw around it a cruve that has the same distance away from this point, that is a circle!. It is a basic shape that has no corners or straight lines and looks like a perfect round ring.',
              style: style2,
            ),
            Text(
              '- A circle has four main propreties:  ',
              style: style2,
            ),
            Text(
              '     -A center: The  point that has an equal distance from all points on the circle edge.',
              style: style2,
            ),
            Text(
              '    -A radius: The distance from the center of the circle to any point on its edge ',
              style: style2,
            ),
            Text(
              '    -A diameter:The distance across the circle, passing through the center. It is always twice the length of the radius ',
              style: style2,
            ),
            Text(
              '    -A circumference:: The distance all the way around the circle',
              style: style2,
            ),
            Image.asset('images/circle.png'),
            SizedBox(
              height: 2,
            ),
            Text(
              '2) The Oval ',
              style: style3,
            ),
            Text(
              'An oval is a shape that is elongated like a stretched-out circle,but unlike a circle, they do not have the same distance from the center to the edge all the way around. Instead, they have two different radii, one shorter and one longer. ',
              style: style2,
            ),
            SizedBox(
              height: 9,
            ),
            Container(
                height: 250,
                width: 200,
                child: Image.asset(
                  'images/oval.jpg',
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: 9,
            ),
            Text(
              '3) The Triangle: ',
              style: style3,
            ),
            Text(
              'A triangle is a simple  shape made up of three sides and three angles',
              style: style2,
            ),
            Text(
              '-  Triangles come in different types, like equilateral (all sides and angles are equal), isosceles (two sides and angles are equal), and scalene (no sides or angles are equal)',
              style: style2,
            ),
            Image.asset('images/triangle.png'),
            Text(
              '4) The Rectangle: ',
              style: style3,
            ),
            Text(
              'A rectangle is a simple geometric shape with four straight sides and four right angles,which means they are 90 degrees. Rectangles have two pairs of equal-length sides, with opposite sides being equal.',
              style: style2,
            ),
            Image.asset('images/rectangle.png'),
            SizedBox(
              height: 2,
            ),
            Text(
              '5) The Square: ',
              style: style3,
            ),
            Text(
                'A square is a special type of rectangle where all four sides are equal in length and all four angles are right angles.',
                style: style2),
            Image.asset('images/a square.png'),
            SizedBox(
              height: 2,
            ),
            Text(
              '6) The Rhombus: ',
              style: style3,
            ),
            Text(
              'A rhombus, also known as a diamond, is a geometric shape that looks like a stretched-out square. It has four straight sides, just like a square, but instead of having all four angles as right angles, rhombus have opposite angles that are equal, and all sides are of equal length. ',
              style: style2,
            ),
            Image.asset('images/lozenge.png'),
            SizedBox(
              height: 2,
            ),
            Text(
              '7) The Parallelogram: ',
              style: style3,
            ),
            Text(
              'A parallelogram is a flat shape with four straight sides. Opposite sides in a parallelogram are prallel (which means they never meet) and equal in length, moreover,opposite angles are equal too.',
              style: style2,
            ),
            Image.asset('images/prallel.png'),
            SizedBox(height: 8),
            Text(
                'Note: The parallelogram is like the grandfather of all shapes that has four sides ( rectangle, square and rhombus), they are all special types of the parallelogram.  ',
                style: style4)
          ],
        ),
      ),
    );
  }
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: 70,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 233, 246, 246),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 15, right: 15),
          child: Text(
            "Examples : ",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 10, 139, 148),
            ),
          ),
        ),
        // add your examples here
      ),
    );
  }
}
