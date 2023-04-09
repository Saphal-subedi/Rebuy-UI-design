// ignore_for_file: camel_case_types, prefer_const_constructors, depend_on_referenced_packages, unused_import
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'dart:async';

import 'home.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => homeScreen(),
            )));
    //saphal(context);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFF5A5F),
              Color(0xFFC1839F),
            ]),
      ),
      height: height,
      child: Expanded(
        child: Center(
          child: CircleAvatar(
            radius: height * 0.1,
            backgroundColor: Colors.white,
            child: Text(
              "ReKach",
              style: GoogleFonts.lato(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: height * 0.05,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
