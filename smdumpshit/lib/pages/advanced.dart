import 'package:flutter/material.dart';
import 'package:smdumpshit/data.dart';

class advancedSc extends StatelessWidget {
  const advancedSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Userbar(),
      // SizedBox(
      //   height: 10,
      // ),
      returnButt(
        'RETURN',
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text('What would you like to learn? ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 193,
              child: ListView(
                children: [
                  Subject('CALCULUS',
                      'Learn integrals and diferential equations', '/alg3'),
                  SizedBox(
                    height: 15,
                  ),
                  Subject('ALGEBRA III',
                      'Start the most dificult phase of algebra', '/alg3'),
                  SizedBox(
                    height: 15,
                  ),
                  Subject('PROBABILITY AND STAT',
                      'Learn the basics of both topics', '/alg3'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Divider(
                      thickness: 1,
                      color: gris,
                    ),
                  ),
                  Subject('MATHEMATICAL PROOFS',
                      'Enhance your level in mathimatices!', '/alg3'),
                ],
              ),
            )
          ],
        ),
      )
    ])));
  }
}

class Subject extends StatelessWidget {
  final String SubjectTitle;
  final String Articles;
  final String nexxt;
  Subject(this.SubjectTitle, this.Articles, this.nexxt);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, nexxt);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Container(
        width: double.maxFinite,
        height: 170,
        child: Stack(
          children: [
            Container(
              height: 95,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
            ),
            Positioned(
              bottom: 2,
              child: Container(
                height: 75,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 100.0,
                        offset: Offset(0, 2))
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 13,
                      ),
                      child: Text(
                        SubjectTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color.fromRGBO(10, 139, 148, 1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 13,
                      ),
                      child: Text(
                        Articles,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color.fromRGBO(38, 50, 56, 1),
                        ),
                      ),
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
