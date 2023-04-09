import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class newscreen extends StatefulWidget {
  const newscreen({super.key});

  @override
  State<newscreen> createState() => _newscreenState();
}

class _newscreenState extends State<newscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: .0, vertical: 0.0),
          child: GNav(
            gap: 20,
            activeColor: Colors.white,
            iconSize: 20,
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.green,
            color: Colors.white,
            tabs: [
              GButton(
                icon: Icons.home,
              ),
              GButton(
                icon: Icons.heart_broken,
              ),
              GButton(
                icon: Icons.search,
              ),
              GButton(
                icon: Icons.camera,
              ),
            ],
            onTabChange: (index) {
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
