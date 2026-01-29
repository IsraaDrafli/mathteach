import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smdumpshit/courses.dart/login/resetpass.dart';
import 'package:smdumpshit/courses.dart/login/signup.dart';
import 'package:smdumpshit/data.dart';
import 'package:smdumpshit/pages/maintpo.dart';

final TextEditingController email = TextEditingController();
final TextEditingController password = TextEditingController();

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 253, 252),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'images/logo/logosq.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Welcome back",
                  style: TextStyle(
                    color: turq,
                    fontWeight: FontWeight.w900,
                    fontSize: 22.5,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      " Enter your details to login  ",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                txtinput('Username'),
                SizedBox(height: 20),
                txtinput('Password'),
                SizedBox(
                  height: 2,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Forgot_pass(),
                          ));
                    },
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: turq,
                        fontSize: 12,
                      ),
                    )),
                SizedBox(height: 30),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: turq,
                    ),
                    height: 37,
                    width: 260,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => maintpo(),
                            ));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                //  Container(
                //   padding: EdgeInsets.only(left: 200),
                //   child: TextButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(color: Colors.teal),)),
                //  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account yet?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ));
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 88, 79),
                              fontWeight: FontWeight.w900),
                        )),
                  ],
                ),
                Container(
                    height: 70,
                    width: 150,
                    child: Image.asset(
                      'images/logo/ketba.png',
                      fit: BoxFit.cover,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class txtinput extends StatelessWidget {
  final String lbl;
  const txtinput(this.lbl);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width - 110,
      padding: EdgeInsets.only(left: 25, right: 10),
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          label: Text(lbl),
          fillColor: const Color.fromARGB(255, 10, 127, 115),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 11, 146, 133))),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 22, 152, 139))),
          // label: Text("Username"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
