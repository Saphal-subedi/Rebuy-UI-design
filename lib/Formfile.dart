import 'package:flutter/material.dart';

class formfile extends StatefulWidget {
  formfile({super.key});

  @override
  State<formfile> createState() => _formfileState();
}

class _formfileState extends State<formfile> {
  final formkey = GlobalKey<FormState>();
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
            ],
          ),
        ),
      ],
    );
  }
}
