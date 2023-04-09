import 'package:firstscren/google_nav_bar/Firstcontainer.dart';
import 'package:firstscren/google_nav_bar/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homee extends StatelessWidget {
  const homee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        'photos/Userimage.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -2,
                    right: -2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF8A8A8A),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Icon(
                        Icons.menu,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Text(
                    "Hey Saphal",
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Welcome back!",
                    style: GoogleFonts.lato(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => menu()),
                  );
                },
                child: Icon(
                  Icons.menu,
                  size: 30,
                ),
              ),
              SizedBox(width: 10.0),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFDEDEDE),
            ),
            child: Row(children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
              Text(
                'Search for guitar,books and books...',
                style: TextStyle(
                  color: Color(0xFF828282),
                ),
              ),
              Spacer(),
              Icon(Icons.search, color: Color(0xFF828282)),
              SizedBox(width: 15.0),
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New arrivals",
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                "view more",
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 10,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          firstcontainer(),
        ],
      ),
    );
  }
}
