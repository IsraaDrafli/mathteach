import 'package:flutter/material.dart';
import 'package:smdumpshit/data.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Userbar(),
          // SizedBox(
          //   height: 10,
          // ),
          levelSelCards(),
          SizedBox(
            height: 20,
          ),
          // recViewed(),
        ],
      ),
    ));
  }
}

class recViewed extends StatelessWidget {
  const recViewed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recently viewed",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/fav');
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Container(
              width: double.maxFinite,
              height: 109,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Algebra fondations",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 10, 139, 148)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "BEGINNER LEVEL / ALGEBRA 101",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          height: 2,
                          color: Color.fromARGB(255, 138, 144, 148)),
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}

class levelSelCards extends StatelessWidget {
  const levelSelCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to MathTech",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 22, height: 1.297),
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            "select your level",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, height: 1.243),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 250,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                lvlCard('images/beg.png', 'BEGINNER',
                    "Master algebra,calculus and probabilities", '/b'),
                SizedBox(
                  height: 15,
                ),
                lvlCard('images/inter.png', 'INTERMEDIATE',
                    "Master algebra,calculus and probabilities", '/i'),
                SizedBox(
                  height: 15,
                ),
                lvlCard('images/adv.png', 'ADVANCED',
                    "Master algebra,calculus and probabilities", '/a'),
                SizedBox(
                  height: 15,
                ),
                recViewed()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class lvlCard extends StatelessWidget {
  final String img;
  final String level;
  final String txt;
  final String next;

  lvlCard(this.img, this.level, this.txt, this.next);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, next);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Container(
        width: double.maxFinite,
        height: 109,
        padding: EdgeInsets.only(left: 22),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 22),
                Row(
                  children: [
                    SizedBox(height: 1, width: 12),
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        img,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // SizedBox(height: 1, width: 5),
                    Text(
                      level,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Color.fromARGB(255, 10, 139, 154),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: Text(
                    txt,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromARGB(255, 38, 50, 56)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
