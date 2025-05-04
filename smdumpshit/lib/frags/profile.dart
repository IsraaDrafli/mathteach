import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smdumpshit/courses.dart/login/resetpass.dart';
import 'package:smdumpshit/data.dart';

class myprofile extends StatelessWidget {
  const myprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(profilController());
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 246, 246),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 20.0, top: 25, left: 20, bottom: 15),
              child: Text(
                "My Profile",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
            // SizedBox(
            //   height: 4,
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 18,
                              spreadRadius: 0.5,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    //to change the profile picture
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.black,
                                    size: 70,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 2, width: 1),
                            Container(
                              height: 20,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Username",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: turq,
                                      height: 1.2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Lvl .1",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(
                                  255,
                                  138,
                                  138,
                                  138,
                                ),
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 25, height: 1),
                                Container(
                                  height: 63,
                                  width: 87.33,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(
                                      255,
                                      233,
                                      246,
                                      246,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 13, width: 1),
                                      Row(
                                        children: [
                                          SizedBox(height: 1, width: 16),
                                          Container(
                                            height: 18,
                                            width: 18,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                  'images/profile/pic1.png', // add your image
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "  20+",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                255,
                                                9,
                                                117,
                                                124,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 4, width: 1),
                                      Row(
                                        children: [
                                          SizedBox(height: 1, width: 16),
                                          Text(
                                            "Achievements",
                                            style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromARGB(
                                                255,
                                                112,
                                                191,
                                                197,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 63,
                                  width: 87.33,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(
                                      255,
                                      255,
                                      245,
                                      234,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 13, width: 1),
                                      Row(
                                        children: [
                                          SizedBox(height: 1, width: 16),
                                          Container(
                                            height: 18,
                                            width: 18,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                  'images/profile/Vector.png', // add your image
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "  12",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                255,
                                                237,
                                                134,
                                                0,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 4, width: 1),
                                      Row(
                                        children: [
                                          SizedBox(height: 1, width: 10),
                                          Text(
                                            "Learning hours",
                                            style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromARGB(
                                                255,
                                                226,
                                                136,
                                                0,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 63,
                                  width: 87.33,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(
                                      255,
                                      246,
                                      233,
                                      233,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 13, width: 1),
                                      Row(
                                        children: [
                                          SizedBox(height: 1, width: 8),
                                          Container(
                                            height: 25,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                  'images/profile/Frame5.png', // add your image
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4, width: 1),
                                      Row(
                                        children: [
                                          SizedBox(height: 1, width: 20),
                                          Text(
                                            "4th place",
                                            style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromARGB(
                                                255,
                                                197,
                                                112,
                                                112,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 1, width: 10)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10, width: 1),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 18,
                              spreadRadius: 0.5,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Account settings",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "Username",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "raheel",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: turq),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "Age",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "20",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(
                                          10,
                                          139,
                                          148,
                                          1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "My Email",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "address@gmail.com",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(
                                          10,
                                          139,
                                          148,
                                          1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "Reset password",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => reset(),
                                            ));
                                      },
                                      borderRadius: BorderRadius.circular(20),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color.fromARGB(
                                          255,
                                          10,
                                          139,
                                          154,
                                        ),
                                        size: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "Enable notifications",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Obx(
                                    () => TextButton(
                                      onPressed: () {},
                                      child: Transform.scale(
                                        scaleX: 0.9,
                                        scaleY:
                                            0.55, // Adjust the scale factor according to your preference
                                        child: Switch(
                                          activeColor: Color.fromARGB(
                                            255,
                                            10,
                                            139,
                                            154,
                                          ),
                                          value: Get.find<profilController>()
                                              .hasNotification,
                                          onChanged: (value) {
                                            Get.find<profilController>()
                                                .changeNotification(value);
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  // Add your onPressed logic here
                                },
                                color: Color.fromARGB(255, 10, 139, 154),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                minWidth: double.maxFinite,
                                height: 40,
                                child: Text(
                                  "Confirm Changes",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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

class MyController extends GetxController {
  var _hasNotification = false.obs;

  bool get hasNotification => _hasNotification.value;

  void changeNotification(bool value) {
    _hasNotification.value = value;
  }
}
