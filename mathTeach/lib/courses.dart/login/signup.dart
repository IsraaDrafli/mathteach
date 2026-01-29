import 'package:flutter/material.dart';
import 'package:smdumpshit/courses.dart/login/login.dart';
import 'package:smdumpshit/data.dart';
import 'package:smdumpshit/pages/maintpo.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: turq,
                    ),
                  ),
                  SizedBox(height: 9),
                  Text(
                    'Create new account',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 19),
                  Text(
                    'Username',
                    style: TextStyle(
                        fontSize: 14, color: turq, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  signupin('', false),
                  SizedBox(height: 4),
                  Text(
                    'Email Addres',
                    style: TextStyle(
                        fontSize: 14, color: turq, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  signupin('', false),
                  SizedBox(height: 4),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 14, color: turq, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  signupin('X X X X X X X', true),
                  SizedBox(height: 4),
                  Text(
                    'Confirm Password',
                    style: TextStyle(
                        fontSize: 14, color: turq, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  signupin('X X X X X X X', true),
                  SizedBox(
                    height: 25,
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
                            horizontal: 140.0, vertical: 14.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        backgroundColor: turq,
                        textStyle: TextStyle(fontSize: 16.0),
                      ),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      'OR',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      height: 45,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1,
                          color: turq!,
                        ),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          'Sign in using Google',
                          style: TextStyle(
                              color: turq,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => login(),
                                ));
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(
                                color: Color.fromARGB(255, 14, 109, 101),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                        height: 110,
                        width: 130,
                        child: Image.asset(
                          'images/logo/whole.png',
                          fit: BoxFit.cover,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class signupin extends StatelessWidget {
  const signupin(this.hintxt, this.obsc);
  final String hintxt;
  final bool obsc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        obscureText: obsc,
        decoration: InputDecoration(
            hintText: hintxt,
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
    );
  }
}
