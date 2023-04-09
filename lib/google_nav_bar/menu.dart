import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(35),
          child: Column(
            children: [
              Row(
                children: [
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
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.cancel_sharp,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              view(),
            ],
          ),
        ),
      ),
    );
  }
}

class view extends StatelessWidget {
  const view({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: 500,
      alignment: Alignment.center,
      child: ListView.separated(
        itemBuilder: ((context, index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFD4E4E6)),
            height: 70,
            child: ListTile(
              leading: Icon(
                all[index].icon,
                size: 30,
              ),
              title: Text('${all[index].title}'),
              subtitle: Text('${all[index].subtitle}'),
            ),
          );
        }),
        separatorBuilder: ((context, index) => SizedBox(height: 15)),
        itemCount: all.length,
      ),
    );
  }
}

class Model {
  IconData icon;
  String title = '';
  String subtitle = '';
  Model({required this.icon, required this.title, required this.subtitle});
}

List<Model> all = [
  Model(
      icon: Icons.person,
      title: 'My Account',
      subtitle: 'Edut you details,account setting'),
  Model(
      icon: Icons.person,
      title: 'My Orders',
      subtitle: 'Edut you details,account setting'),
  Model(
      icon: Icons.person,
      title: 'My Listings',
      subtitle: 'Edut you details,account setting'),
  Model(
      icon: Icons.person,
      title: 'Liked item',
      subtitle: 'Edut you details,account setting'),
];
