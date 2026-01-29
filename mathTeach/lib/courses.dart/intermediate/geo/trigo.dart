import 'package:flutter/material.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';
import 'package:get/get.dart';

List<Question> questions = [
  Question(
      question: 'Find K. Round to the nearest tenth',
      options: ['45.9', '43.8', '56.9', '74.8'],
      correctIndex: 3,
      img: 'images/trig1.png'),
  Question(
      question: 'Find a to the nearest degree using cosine',
      options: [
        '55',
        '56',
        '58',
        '60',
      ],
      correctIndex: 1,
      img: 'images/trig2.png'),
  Question(
      question: 'Tangent = ?',
      options: [
        'Opposite / Adjacent',
        'Adjacent / Hypotenuse',
        'Opposite / Adjacent',
        'Opposite/ Hypotenuse'
      ],
      correctIndex: 2,
      img: 'images/random.png'),
  // Add more questions here...
];

class TrigoCourse extends StatelessWidget {
  TrigoCourse({super.key});
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
                        'Trigonometry ',
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
                                    'images/geo/trigocover.jpg', // add your image
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
              'Right-angled triangles (or simply right triangles) are somehow unique and different from the other types of triangles, they have some interesting properties called "trigonometry". In fact, trigonometry is a whole branch of math concerned with relationships between angles and side lengths of triangles. This course will be an introduction to trigonometry and its basic concepts and functions. ',
              style: style2,
            ),
            SizedBox(height: 9),
            Text('Sides of a right triangle ', style: style1),
            SizedBox(
              height: 2,
            ),
            Text(
              'Right triangles have some specific names for their sides. First,We always refer to the longest side (opposite the right-angle) as the hypotenuse.',
              style: style2,
            ),
            Text(
              'Now, We have to choose one of the two acute angles and label it, we use it as a reference angle to distinguish the other two sides of the triangle, let it be α ( we often use one of the Greek letters α, β, γ or θ to label angles).',
              style: style2,
            ),
            Text(
              ' - The side opposite the reference angle is called the opposite side, generally referred to as the opposite, and the remaining side is called the adjacent side, or simply adjacent, since it is next to the reference angle. ',
              style: style2,
            ),
            Image.asset('images/geo/namingsides.png'),
            Text(
              'The three basic trigonometric ratios',
              style: style1,
            ),
            Text(
              'Let us change the name of our reference angle and let it be θ and 0° < θ < 90°, we can now define three trigonometric ratios: ',
              style: style2,
            ),
            Text(
              ' - The tangent ratio',
              style: style3,
            ),
            Text(
              'The ratio of the opposite to the adjacent is known as the tangent ratio or the tangent of the angle θ, we write:',
              style: style2,
            ),
            Container(
                height: 50,
                width: 150,
                child: Image.asset(
                  'images/geo/tan.png',
                  fit: BoxFit.fill,
                )),
            Text(
              ' - The sine ratio',
              style: style3,
            ),
            Text(
              'The ratio of the opposite to the hypotenuse is known as the sine ratio or the sine of the angle θ, we write:',
              style: style2,
            ),
            Container(
                height: 50,
                width: 150,
                child: Image.asset(
                  'images/geo/sin.png',
                  fit: BoxFit.fill,
                )),
            Text(
              ' - The cosine ratio',
              style: style3,
            ),
            Text(
              'The ratio of the adjacent to the hypotenuse is known as the cosine ratio or the cosine of the angle θ, we write:',
              style: style2,
            ),
            Container(
                height: 50,
                width: 150,
                child: Image.asset(
                  'images/geo/cos.png',
                  fit: BoxFit.fill,
                )),
            Text(
              'Trick: You can easily remember those ratios using this simple mnemonic: "SOH CAH TOA", consisting of the first letter of each ratio and the first letter of the sides making up that ratio.',
              style: style4,
            ),
            Text(
              'Notice:',
              style: style3,
            ),
            Text(
              ' - Once we fix the size of the reference angle in a right triangle then the ratios of various sides remain the same no matter the size of the triangle, if we take for example the below triangles, they have the same trigonometric ratios!',
              style: style2,
            ),
            Image.asset('images/geo/sizes.png'),
            SizedBox(
              height: 3,
            ),
            Text(
              ' - Special angles:',
              style: style3,
            ),
            Text(
              'Some angles are frequently used in trigonometry, like the angles 30°, 45° and 60°, therefore,  their sine, cosine and tangent ratios can be expressed using rational numbers and surds. The table below summarises their values:  ',
              style: style2,
            ),
            Image.asset('images/geo/table1.png'),
            SizedBox(
              height: 3,
            ),
            Text(
              'Finding angles',
              style: style1,
            ),
            Text(
              'In order to use the trigonometric ratios to find angles in a right-angled triangle,we need to reverse the process. Thus, given the sine, cosine or tangent of some angle between 0 and 90 degrees, we want to find the angle with the given ratio.',
              style: style2,
            ),
            Text(
              '- We have: tan 45° = 1. We say that the inverse tangent of 1 is 45°. This is written as  tan⁻¹ = 45°',
              style: style2,
            ),
            Text(
              '- Similarly, since sin 30° = 0.5, we write sin⁻¹0.5 = 30° and say: the inverse sine of 0.5 is 30°',
              style: style2,
            ),
            Text(
              '- To find, for example, cos⁻¹ 0.25, we use the calculator, which gives 75.52°,',
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
        height: 650,
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
                'The trigonometric ratios for this ',
                style: style2,
              ),
              Text(
                'triangle: ',
                style: style2,
              ),
              Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset('images/example1.png', fit: BoxFit.fill)),
              Text(
                'are:',
                style: style2,
              ),
              Container(
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    'images/cossol.png',
                    fit: BoxFit.fill,
                  )),
              Container(
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    'images/sinsol.png',
                    fit: BoxFit.fill,
                  )),
              Container(
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    'images/tansol.png',
                    fit: BoxFit.fill,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
