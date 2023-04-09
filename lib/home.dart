// ignore_for_file: depend_on_referenced_packages, unnecessary_import, implementation_imports, camel_case_types, unused_local_variable

import 'package:firstscren/Formfile.dart';
import 'package:firstscren/Rowdivider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'Button.dart';
import 'Signup.dart';
import 'widget.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.only(right: 35, left: 35, top: 20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new_sharp),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      child: Text(
                        "ReKach",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Log in",
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Login with following options",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                CustumButton1(),
                SizedBox(height: 20),
                rowdivider(),
                SizedBox(
                  height: 20.0,
                ),
                formfile(),
                SizedBox(
                  height: 20.0,
                ),
                buton(title: "Log in"),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don' + 't have an account?',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF8D8D8D),
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFFFF5A5F),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => signupScreen(),
                            ));
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
