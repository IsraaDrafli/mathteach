import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/data.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return Stack(
                children: [
                  Positioned.fill(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 17),
                        Text(
                          'Questions',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, right: 23),
                          child: Divider(
                            color: Color.fromRGBO(38, 50, 56, 0.5),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Question1(
                                    'Can someone explain how to solve equations like 3x + 5 = 17 step by step?',
                                    'Unknown user',
                                    'Jan 8, 2024',
                                    'Upvote',
                                    'Reply'),
                                Question2(
                                    "I'm struggling with simplifying expressions. Could someone walk me through an example?",
                                    'Unknown user',
                                    'Feb 1, 2024',
                                    '5',
                                    '1'),
                                Question1(
                                    'Anyone understand how to approach practical problems involving algebra, like the rectangular garden one? Need some guidance.',
                                    'Unknown user',
                                    'Mar 7, 2024',
                                    'Upvote',
                                    'Reply'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 22, right: 22, top: 19, bottom: 30),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.person,
                                      color: Colors.black,
                                    )),
                                SizedBox(width: 5),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Ask your question...',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(13),
                                        borderSide: BorderSide(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.13)),
                                      ),
                                      hintStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      fillColor:
                                          Color.fromRGBO(241, 240, 240, 0.8),
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            shape: MaterialStatePropertyAll(
                                                RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(13),
                                                  bottomRight:
                                                      Radius.circular(13)),
                                            )),
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Color.fromRGBO(
                                                        10, 139, 148, 0.38))),
                                        icon: Icon(Icons.send),
                                        color: Colors.white,
                                        highlightColor:
                                            Color.fromRGBO(10, 139, 148, 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.13)),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width * 0.6, 47)),
            backgroundColor: MaterialStateProperty.all(turq),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)))),
        child: Text('Questions'),
      ),
    );
  }
}

class Question1 extends StatelessWidget {
  final String qst;
  final String user;
  final String date;
  final String upvote;
  final String reply;

  Question1(this.qst, this.user, this.date, this.upvote, this.reply);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 23, top: 16, bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            qst,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(10, 139, 148, 1),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Text(
                user,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 5,
              ),
              Text('.'),
              SizedBox(
                width: 5,
              ),
              Text(
                date,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.zero),
                    splashFactory: NoSplash.splashFactory,
                    overlayColor: MaterialStatePropertyAll(Colors.white)),
                child: Row(
                  children: [
                    Image.asset(
                      'images/cmnt/upvoteicon.png',
                      height: 16,
                      width: 16,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      upvote,
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.zero),
                      splashFactory: NoSplash.splashFactory,
                      overlayColor: MaterialStatePropertyAll(Colors.white)),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/cmnt/replyicon.png',
                        height: 17,
                        width: 17,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        reply,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: Color.fromRGBO(38, 50, 56, 0.72),
            thickness: 0.3,
          ),
        ],
      ),
    );
  }
}

class Question2 extends StatelessWidget {
  final String qst;
  final String user;
  final String date;
  final String upvote;
  final String reply;
  final ReplyController controller = ReplyController();
  Question2(this.qst, this.user, this.date, this.upvote, this.reply);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 23, top: 16, bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            qst,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(10, 139, 148, 1),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Text(
                user,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 5,
              ),
              Text('.'),
              SizedBox(
                width: 5,
              ),
              Text(
                date,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.zero),
                    splashFactory: NoSplash.splashFactory,
                    overlayColor: MaterialStatePropertyAll(Colors.white)),
                child: Row(
                  children: [
                    Image.asset(
                      'images/cmnt/upvoteicon.png',
                      height: 16,
                      width: 16,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      upvote,
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.zero),
                      splashFactory: NoSplash.splashFactory,
                      overlayColor: MaterialStatePropertyAll(Colors.white)),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/cmnt/replyicon.png',
                        height: 17,
                        width: 17,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        reply,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      IconButton(
                          onPressed: () {
                            controller.toggleShape();
                          },
                          style: ButtonStyle(
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.zero),
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          icon: Obx(() => controller.updown.value
                              ? Icon(
                                  Icons.keyboard_arrow_up_rounded,
                                  color: Colors.black,
                                  size: 20,
                                )
                              : Icon(
                                  Icons.expand_more_rounded,
                                  color: Colors.black,
                                  size: 20,
                                )))
                    ],
                  ))
            ],
          ),
          Obx(() => controller.Expanded.value
              ? Padding(
                  padding: const EdgeInsets.only(
                      left: 15.5, right: 15.5, top: 16, bottom: 16),
                  child: Expanded(
                    child: Container(
                      color: Color.fromRGBO(233, 246, 246, 1),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 12, bottom: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2x^2 + 3x - x^2 - 2x + 5',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(10, 139, 148, 1),
                              ),
                            ),
                            Text(
                              'Combine like terms:',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(10, 139, 148, 1),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Text(
                                  user,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('.'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  date,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      padding: MaterialStatePropertyAll(
                                          EdgeInsets.zero),
                                      splashFactory: NoSplash.splashFactory,
                                      overlayColor: MaterialStatePropertyAll(
                                        Color.fromRGBO(233, 246, 246, 1),
                                      )),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/cmnt/upvoteicon.png',
                                        height: 16,
                                        width: 16,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        upvote,
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(0, 0, 0, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        padding: MaterialStatePropertyAll(
                                            EdgeInsets.zero),
                                        splashFactory: NoSplash.splashFactory,
                                        overlayColor: MaterialStatePropertyAll(
                                          Color.fromRGBO(233, 246, 246, 1),
                                        )),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'images/cmnt/replyicon.png',
                                          height: 17,
                                          width: 17,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          reply,
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 1)),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  height: 16,
                )),
          Divider(
            color: Color.fromRGBO(38, 50, 56, 0.72),
            thickness: 0.3,
          ),
        ],
      ),
    );
  }
}

class ReplyController extends GetxController {
  RxBool updown = false.obs;
  RxBool Expanded = false.obs;

  void toggleShape() {
    updown.value = !updown.value;
    Expanded.value = !Expanded.value;
  }
}
