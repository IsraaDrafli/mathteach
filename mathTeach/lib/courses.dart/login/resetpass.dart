import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:smdumpshit/courses.dart/login/login.dart';
import 'package:smdumpshit/data.dart';

import 'package:smdumpshit/pages/maintpo.dart';

class Forgot_pass extends StatelessWidget {
  const Forgot_pass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 139, 148, 1),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 347,
            width: 314,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: const Color.fromARGB(174, 0, 0, 0),
                      blurRadius: 21,
                      spreadRadius: 0.5,
                      offset: Offset(0, 2))
                ]),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Forgot password? ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(10, 139, 148, 1),
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'No worries, we’ll send you the instructions',
                    style: TextStyle(
                        fontSize: 10,
                        color: Color.fromRGBO(116, 116, 116, 1),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Email Address',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(10, 139, 148, 1),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(10, 139, 148, 1),
                          )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: turq!,
                          )),
                          fillColor: Color.fromRGBO(171, 171, 171, 0.1),
                          filled: true),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => reset(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 80.0, vertical: 12.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        backgroundColor: Color.fromRGBO(10, 139, 148, 1),
                        textStyle: TextStyle(fontSize: 16.0),
                      ),
                      child: Text(
                        'Reset Password',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      IconButton(
                        color: const Color.fromRGBO(151, 151, 151, 1),
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        'Return to login',
                        style: TextStyle(
                            color: const Color.fromRGBO(151, 151, 151, 1),
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 2,
                        width: 84,
                        color: Color.fromRGBO(10, 139, 148, 1),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 2,
                        width: 84,
                        color: Color.fromRGBO(215, 215, 215, 1),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 2,
                        width: 84,
                        color: Color.fromRGBO(215, 215, 215, 1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//reset
String Email = 'placeholder@gmile.com';

class reset extends StatelessWidget {
  const reset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 139, 148, 1),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 347,
            width: 314,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(174, 0, 0, 0),
                      blurRadius: 21,
                      spreadRadius: 0.5,
                      offset: Offset(0, 2))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Password reset ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(10, 139, 148, 1),
                    ),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      const Text(
                        " We've sent code to ",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(116, 116, 116, 1),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        Email,
                        style: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              fillColor: Color.fromRGBO(171, 171, 171, 0.1),
                              filled: true),
                          style: Theme.of(context).textTheme.titleLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              fillColor: Color.fromRGBO(171, 171, 171, 0.1),
                              filled: true),
                          style: Theme.of(context).textTheme.titleLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              fillColor: Color.fromRGBO(171, 171, 171, 0.1),
                              filled: true),
                          style: Theme.of(context).textTheme.titleLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              fillColor: Color.fromRGBO(171, 171, 171, 0.1),
                              filled: true),
                          style: Theme.of(context).textTheme.titleLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              fillColor: Color.fromRGBO(171, 171, 171, 0.1),
                              filled: true),
                          style: Theme.of(context).textTheme.titleLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(10, 139, 148, 1),
                              )),
                              fillColor: Color.fromRGBO(171, 171, 171, 0.1),
                              filled: true),
                          style: Theme.of(context).textTheme.titleLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => New_pass(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 85.0, vertical: 12.0),
                        backgroundColor: const Color.fromRGBO(10, 139, 148, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        textStyle: const TextStyle(fontSize: 14.0),
                      ),
                      child: const Text(
                        'Verify',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn't get the code?",
                        style: TextStyle(
                            color: Color.fromRGBO(151, 151, 151, 1),
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Resend my code',
                          style: TextStyle(
                              color: Color.fromRGBO(10, 139, 148, 1),
                              fontSize: 11,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 60,
                      ),
                      IconButton(
                        color: const Color.fromRGBO(151, 151, 151, 1),
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const Text(
                        'Return to login',
                        style: TextStyle(
                            color: Color.fromRGBO(151, 151, 151, 1),
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 5),
                      Container(
                        height: 2,
                        width: 84,
                        color: const Color.fromRGBO(215, 215, 215, 1),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        height: 2,
                        width: 84,
                        color: const Color.fromRGBO(10, 139, 148, 1),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        height: 2,
                        width: 84,
                        color: const Color.fromRGBO(215, 215, 215, 1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//new passwrd
class New_pass extends StatelessWidget {
  const New_pass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 139, 148, 1),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 452,
            width: 314,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: const Color.fromARGB(174, 0, 0, 0),
                      blurRadius: 21,
                      spreadRadius: 0.5,
                      offset: Offset(0, 2))
                ]),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New password ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(10, 139, 148, 1),
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Choose a new password for your account',
                    style: TextStyle(
                        fontSize: 10,
                        color: Color.fromRGBO(116, 116, 116, 1),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(10, 139, 148, 1),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          isDense: true,
                          hintText: 'X X X X X X X',
                          hintStyle: TextStyle(fontSize: 13),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(10, 139, 148, 1),
                          )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(10, 139, 148, 1),
                          )),
                          fillColor: Color.fromRGBO(171, 171, 171, 0.1),
                          filled: true),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    ' Confirm Password',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(10, 139, 148, 1),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          isDense: true,
                          hintText: 'X X X X X X X',
                          hintStyle: TextStyle(fontSize: 13),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(10, 139, 148, 1),
                          )),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(10, 139, 148, 1),
                          )),
                          fillColor: Color.fromRGBO(171, 171, 171, 0.1),
                          filled: true),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => maintpo(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 70.0, vertical: 12.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        backgroundColor: turq,
                        textStyle: TextStyle(fontSize: 16.0),
                      ),
                      child: Text(
                        'Reset Password',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      IconButton(
                        color: const Color.fromRGBO(151, 151, 151, 1),
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => login(),
                              ));
                        },
                      ),
                      Text(
                        'Return to login',
                        style: TextStyle(
                            color: const Color.fromRGBO(151, 151, 151, 1),
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 2,
                        width: 84,
                        color: Color.fromRGBO(215, 215, 215, 1),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 2,
                        width: 84,
                        color: Color.fromRGBO(215, 215, 215, 1),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 2,
                        width: 84,
                        color: Color.fromRGBO(10, 139, 148, 1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
