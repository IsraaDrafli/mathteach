import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/comment.dart';
import 'package:smdumpshit/data.dart';

List<Question> questions = [
  Question(
      question: 'find the number of subsets  V.',
      options: ['16', '12', '10', '8'],
      correctIndex: 0,
      img: 'images/sets1.png'),
  Question(
      question: 'What type of set is denoted as either { } or ∅?',
      options: [
        'Superset',
        'Disjointed Set',
        'Empty (or Null) Set',
        'Subset',
      ],
      correctIndex: 2,
      img: 'images/random.png'),
  Question(
      question: 'Choose the right ansewr',
      options: ['{1,3,5}', '{1,2,3}', '{2,3,5}', '{2}'],
      correctIndex: 3,
      img: 'images/sets3.png'),
  // Add more questions here...
];

class setss extends StatelessWidget {
  setss({super.key});
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
                        'Sets',
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
                                    'assets/OIP.jpg', // add your image
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
  final TextStyle style6 = TextStyle(
    fontWeight: FontWeight.w700,
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
            Text('1) Introduction:', style: style4),
            SizedBox(
              height: 5,
            ),
            Text(
                'Sets are a fundamental concept in mathematics that allow us to organize and analyze collections of objects.',
                style: style2),
            SizedBox(
              height: 7,
            ),
            Text(
              "2) Definition of a Set: ",
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'A set is a well-defined collection of distinct objects, considered as an entity. These objects can be anything - numbers, letters, shapes, or even other sets. We denote a set by listing its elements inside curly braces {}.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 120,
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
                      'Set A = {1, 2, 3, 4, 5} represents a set of the first five natural numbers.',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Set B = {apple, orange, banana} represents a set of fruits.',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "3) Definition of a SubSet: ",
              style: style4,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'A subset is a set whose elements are all contained within another set. Formally, if every element of set A is also an element of set B, then A is a subset of B, denoted as A ⊆ B.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 120,
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
                      'Set C = {1, 2} is a subset of Set A = {1, 2, 3, 4, 5}.',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Set D = {apple, banana} is a subset of Set B = {apple, orange, banana}.',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "4)  Set Properties: ",
              style: style4,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "1) Universal Set: ",
              style: style3,
            ),
            Text(
              'The universal set, denoted by U, is the set that contains all the elements under consideration within a particular context.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'example:',
                      style: style4,
                    ),
                    Text(
                      'The students that are inside the class are considered as a universal set and assume that Aimen,Anis,Kamal,Israa and Raheel are inside the class then the universal set is represented as : ',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '   U ={Aimen,Anis,Kamal,Israa,Raheel}',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "2) Complement: ",
              style: style3,
            ),
            Text(
              'The complement of a set A is a set consists of all elements in the universal set U that are not in A.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'example:',
              style: style6,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Let us say we have a set A representing the vowels in the English alphabet A = {a,e,i,o,u}',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'The complement of A would be all the consonants in the English alphabet : ',
              style: style2,
            ),
            Text(
              'A(complement) = {b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z}',
              style: style2,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "3) Empty Set:",
              style: style3,
            ),
            Text(
              'The empty set, denoted by ∅ or {}, is a set that contains no elements.',
              style: style2,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "4) Equality of Sets: ",
              style: style3,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Two sets are equal if and only if they have exactly the same elements.',
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 90,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'example:',
                      style: style4,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'let two sets : A = {x,y} ; B = {y,x}',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'X=Y since they have exactly the same elements.',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              '5) Set Operations :',
              style: style4,
            ),
            SizedBox(
              height: 7,
            ),
            Text('1) Union:', style: style3),
            SizedBox(
              height: 5,
            ),
            Text(
              "The union of sets A and B, denoted by ∪  A∪B, consists of all elements that are in A, in B, or in both A and B.",
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 110,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
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
                      "Set A represents even numbers less than 10:A={0,2,4,6,8}",
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Set A represents odd numbers less than 5:A={1,3}",
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "A∪B = {0,2,4,6,8,1,3}",
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text('2) Intersection::', style: style3),
            SizedBox(
              height: 5,
            ),
            Text(
              "The intersection of sets A and B , denoted by ∩  A∩B, consists of all elements that are common to both A and B",
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 90,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'example:',
                      style: style4,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Using the same sets A and B as before:',
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'A∩B = ∅ = {}',
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text('3) Difference:', style: style3),
            SizedBox(
              height: 5,
            ),
            Text(
              "The difference of sets A and B, denoted by   A-B, consists of all elements that are in A and not in B.",
              style: style2,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 110,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
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
                      "Set A represents even numbers less than 10:A={0,2,4,6,8}",
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Set A represents even numbers less than 5:A={0,2,4}",
                      style: style2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "A-B = {6,8}",
                      style: style2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              '6) Set Cardinality:',
              style: style4,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              " The cardinality of a set is the number of elements it contains. It is denoted by |A|, where A is the set.",
              style: style2,
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 246, 246),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text(
                      'example:',
                      style: style4,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '  If A = {1, 2, 3}, then |A| = 3.',
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
