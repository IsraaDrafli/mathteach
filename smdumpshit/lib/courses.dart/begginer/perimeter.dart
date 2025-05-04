import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

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

class perim extends StatelessWidget {
  perim({super.key});
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
                        'Perimeters',
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
                                    'images/quiz/perimeter1.jpg', // add your image
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
      fontSize: 14,
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
            Text('Calculation Of Perimeter Of some basic shapes ',
                style: style1),
            SizedBox(
              height: 12,
            ),
            Text('1) Introduction', style: style4),
            SizedBox(
              height: 3,
            ),
            Text(
                '  We come across many shapes in daily life. a triangle, a rectangle, a square or any other shape. Every shape begins with a line . Number and arrangement of these lines decide the type of the shape. Each shape has an interior surface bounded by these lines. These bounded lines form the perimeter of shape and formula for it may change from one shape to another.',
                style: style2),
            Text('2) What is the Perimeter?', style: style4),
            SizedBox(
              height: 3,
            ),
            Text(
              '  Any shape that lies on a flat surface and has length and width are called 2-D (two-dimensional) shape. Every polygon is a 2-D figure which lies flat on a plane. Polygons are closed figures which are bounded by a chain of lines, for example, triangles, rectangles, and squares. In other words, it is the length of its boundaries. Its unit is centimeter (cm) or meter (m).',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '  Consider a rectangle, the surrounding distance indicated by the arrows form the perimeter of the given rectangle. It is the sum total covered by two lengths and two widths.',
              style: style2,
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              child: Image.asset(
                'images/imga.PNG',
                fit: BoxFit.cover,
              ),
              height: 150,
              width: 300,
            ),
            SizedBox(
              height: 7,
            ),
            Text('3) Perimeter of Shapes Formula', style: style4),
            SizedBox(height: 3),
            Text(
                '  As mentioned above, perimeter of any shape can be calculated considering the boundary of the shape. Thus, the formula of perimeter of shapes is given by:',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text(
              '      Perimeter of shapes',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 226, 5, 234)),
            ),
            Text(
              '                 =',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 226, 5, 234)),
            ),
            Text(
              'Total length of the boundary of shapes',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 226, 5, 234)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '4) Perimeter of Different Shapes and Formulas',
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '  We know every shape is different from one another. Thus, the formula for perimeters of geometric shapes also varies from one shape to another. Some common shapes and formula for finding their perimeters are as follows.',
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Text('1)Perimeter of Rectangle', style: style5),
            SizedBox(
              height: 5,
            ),
            Text(
              '  Rectangle is a four-sided shape(polygon) having two dimensions i.e. length and width.',
              style: style2,
            ),
            SizedBox(height: 7),
            Container(
              child: Image.asset(
                'images/imgb.PNG',
                fit: BoxFit.cover,
              ),
              height: 150,
              width: 300,
            ),
            SizedBox(
              height: 5,
            ),
            Text('  Perimeter of a rectangle = sum of four sides',
                style: style2),
            SizedBox(
              height: 3,
            ),
            Text(' = AB     +     BC        + CD       +   AD', style: style2),
            SizedBox(
              height: 3,
            ),
            Text('  = length + width + length + width', style: style2),
            SizedBox(
              height: 3,
            ),
            Text('  = 2 length + 2 width', style: style2),
            SizedBox(
              height: 3,
            ),
            Text('  Perimeter of a rectangle =   2 × (length + width)',
                style: style2),
            SizedBox(
              height: 5,
            ),
            Text(
              '2)Perimeter of a Square',
              style: style5,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '  Square is also a polygon where all its sides are the same i.e they all all equal.',
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Image.asset(
                'images/imgc.PNG',
                fit: BoxFit.cover,
              ),
              height: 230,
              width: 300,
            ),
            Text(
              "  The perimeter of a square = sum of all four sides",
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
              "  = a + a + a+ a",
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
              "  = 4a",
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
              "  The perimeter of a square = 4 × side",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 5,
              width: 1,
            ),
            Text(
              '3) Perimeter of a Circle',
              style: style5,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                '   Circle is a collection of points and perimeter of a circle is known as circumference of a circle.',
                style: style2),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Image.asset(
                'images/imgd.PNG',
                fit: BoxFit.cover,
              ),
              height: 240,
              width: 300,
            ),
            SizedBox(height: 5),
            Text('  Circumference of a circle is equal to 2πr.', style: style2),
            SizedBox(
              height: 3,
            ),
            Text('  Where r is the radius of the circle and pi is a constant',
                style: style2),
            SizedBox(
              height: 10,
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
        height: 220,
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
                    'the perimeter of a rectangle with hight 3 cm',
                    style: style2,
                  ),
                ],
              ),
              Text(
                'and width 5 is : 2 × (3 + 5) cm= 16 cm',
                style: style2,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text('2) ', style: style4),
                  Text(
                    'the perimeter of a square with side',
                    style: style2,
                  ),
                ],
              ),
              Text(
                ' 9 cm is : 4 × 9 cm= 36 cm',
                style: style2,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text('3) ', style: style4),
                  Text(
                    'the perimeter of a circle with radius ',
                    style: style2,
                  ),
                ],
              ),
              Text(
                '4 cm is : 2 × 3.14 × 4 cm= 25.12 cm',
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
