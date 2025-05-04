import 'package:flutter/material.dart';
import 'package:smdumpshit/data.dart';

import 'begin.dart';

class interSc extends StatelessWidget {
  const interSc({super.key});

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
                  height: 10,
                ),
                Subject('ALGEBRA', 'Learn Algebra basics', '/alg2',
                    'images/albeg.png'),
                SizedBox(
                  height: 25,
                ),
                Subject('GEOMETRY', 'Learn Geometry basics', '/geo2',
                    'images/geobeg.png'),
              ],
            ),
          )
        ],
      )),
    );
  }
}
