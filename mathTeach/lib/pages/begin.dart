import 'package:flutter/material.dart';
import 'package:smdumpshit/data.dart';

class beginnerSc extends StatelessWidget {
  const beginnerSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Userbar(),
          returnButt(
            'RETURN',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 200,
                  child: ListView(
                    children: [
                      Text('What would you like to learn? ',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Subject('ALGEBRA', 'Learn Algebra basics', '/alg1',
                          'images/albeg.png'),
                      SizedBox(
                        height: 25,
                      ),
                      Subject('GEOMETRY', 'Learn Geometry basics', '/geo1',
                          'images/geobeg.png'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

class Subject extends StatelessWidget {
  final String SubjectTitle;
  final String Articles;
  final String route;
  final String imag;
  Subject(this.SubjectTitle, this.Articles, this.route, this.imag);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Container(
        width: double.maxFinite,
        height: 250,
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                imag,
                fit: BoxFit.fill,
              ),
              height: 150,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              ),
            ),
            Positioned(
              bottom: 2,
              child: Container(
                height: 110,
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
                        top: 25,
                        left: 13,
                      ),
                      child: Text(
                        SubjectTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color.fromRGBO(10, 139, 148, 1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
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
