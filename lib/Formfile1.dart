import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class formfilee extends StatefulWidget {
  formfilee({super.key});

  @override
  State<formfilee> createState() => _formfileeState();
}

class _formfileeState extends State<formfilee> {
  final formkey = GlobalKey<FormState>();
  final namecontrller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                controller: namecontrller,
                decoration: InputDecoration(
                  hintText: 'Name',
                  fillColor: Color(0xFFDEDEDE),
                  filled: true,
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFDEDEDE),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red.shade700),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  fillColor: Color(0xFFDEDEDE),
                  filled: true,
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFDEDEDE),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red.shade700),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  fillColor: Color(0xFFDEDEDE),
                  filled: true,
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFDEDEDE),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red.shade700),
                  ),
                ),
              ),
              TextButton(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFFFF5A5F),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  onPressed: () async {
                    UserCredential userCredential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: emailcontroller.text,
                            password: passwordcontroller.text);
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
