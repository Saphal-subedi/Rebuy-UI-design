import 'package:firstscren/google_nav_bar/Buttonnavbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'google_nav_bar/Home.dart';
import 'google_nav_bar/menu.dart';

class rowbutton extends StatelessWidget {
  IconData icon1;
  IconData icon2;
  String title = '';
  rowbutton(
      {super.key,
      required this.icon1,
      required this.icon2,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(
            child: Icon(
              icon1,
              color: Colors.black,
              size: 35,
            ),
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => buttonavbar(),
                  ));
            }),
          ),
          SizedBox(width: 20),
          Text(
            '$title',
            style: GoogleFonts.lato(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
              decoration: TextDecoration.none,
            ),
          ),
          Spacer(),
          TextButton(
            child: Icon(
              icon2,
              color: Colors.black,
              size: 35,
            ),
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => menu(),
                  ));
            }),
          ),
        ],
      ),
    );
  }
}
