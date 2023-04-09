import 'package:flutter/material.dart';

import 'google_nav_bar/Buttonnavbar.dart';
import 'google_nav_bar/mainscreen.dart';

class buton extends StatelessWidget {
  final String title;
  const buton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => buttonavbar()));
      }),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFFFF5A5F),
                Color(0xFFC1839F),
              ]),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            '$title',
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
