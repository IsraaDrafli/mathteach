import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:smdumpshit/data.dart';

class quizzes extends StatelessWidget {
  const quizzes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Userbar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Quiz record',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) => quizCard(),
                    itemCount: 3,
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class quizCard extends StatelessWidget {
  final cardA = GlobalKey<ExpansionTileCardState>();
  quizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        elevation: 3,
        child: ExpansionTileCard(
          elevation: 0,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          key: cardA,
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(39, 10, 139, 148),
            ),
            height: 37,
            width: 49,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '10',
                  style: TextStyle(color: turq, fontSize: 15),
                ),
                Text(
                  '/15',
                  style: TextStyle(color: turq, fontSize: 10),
                )
              ],
            ),
          ),
          title: const Text('Evaluating expressions with one variable',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: const Text(
            'Beginner / Algebra 101 / Algebra foundations',
            style: TextStyle(
                color: Color.fromRGBO(138, 144, 148, 1),
                fontSize: 10,
                fontWeight: FontWeight.w500),
          ),
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Container(
                  height: 70,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(10, 139, 148, 1)),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(26)))),
                          child: Text('Retake quiz'),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(10, 139, 148, 1)),
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                    color: Color.fromRGBO(10, 139, 148, 1)),
                              ),
                            ),
                            child: Text('go to course')),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
