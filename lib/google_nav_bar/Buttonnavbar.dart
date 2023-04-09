// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, prefer_const_constructors, camel_case_types, avoid_print, prefer_const_literals_to_create_immutables

import 'package:firstscren/google_nav_bar/Camera.dart';
import 'package:firstscren/google_nav_bar/Explore.dart';
import 'package:firstscren/google_nav_bar/Home.dart';
import 'package:firstscren/google_nav_bar/Liked.dart';
import 'package:firstscren/google_nav_bar/Message.dart';
import 'package:flutter/Material.dart';

List allitem = [
  homee(),
  explore(),
  CameraPage(),
  liked(),
  message(),
];

class buttonavbar extends StatefulWidget {
  const buttonavbar({super.key});

  @override
  State<buttonavbar> createState() => _buttonavbarState();
}

class _buttonavbarState extends State<buttonavbar> {
  int valuee = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Transform.translate(
        offset: Offset(-0.36 * width, 37),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            border: Border.all(
              color: Colors.black,
              width: 10.0,
            ),
          ),
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.linked_camera_outlined,
              size: 50,
              color: Colors.black,
            ),
            onPressed: () {
              print('I am camera ok');
            },
          ),
        ),
      ),
      body: allitem[valuee],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        backgroundColor: Colors.black,
        selectedFontSize: 25.0,
        currentIndex: valuee,
        onTap: (value) {
          setState(() {
            valuee = value;
            print(valuee);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.linked_camera_outlined),
            label: " ",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Liked",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
