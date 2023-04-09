import 'package:firstscren/google_nav_bar/Firstcontainer.dart';
import 'package:flutter/material.dart';

import '../RowButton.dart';

class explore extends StatelessWidget {
  const explore({super.key});

  @override
  Widget build(BuildContext context) {
    var i;
    return SafeArea(
        child: Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              rowbutton(
                  icon1: Icons.arrow_back_ios_new_sharp,
                  icon2: Icons.menu,
                  title: 'Explore'),
              Column(
                children: [
                  SizedBox(width: 10),
                  for (i = 0; i < 3; i++) firstcontainer(),
                  SizedBox(height: 5),
                ],
              )
            ]),
      ),
    ));
  }
}
