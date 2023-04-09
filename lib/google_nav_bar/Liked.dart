import 'package:flutter/material.dart';

import '../RowButton.dart';

int i = 0;

class liked extends StatelessWidget {
  const liked({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              rowbutton(
                  icon1: Icons.arrow_back_ios_new_sharp,
                  icon2: Icons.menu,
                  title: 'Liked Items'),
              for (i = 0; i < 5; i++)
                Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFD4E4E6),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Image.asset(
                            '${all[i].image}',
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            '${all[i].title}',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                          subtitle: Text(
                            '${all[i].subtitle}\n\$${all[i].price}',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
            ]),
      ),
    ));
  }
}

class item {
  String image = '';
  String title = ' ';
  String subtitle = ' ';
  var price = 0;
  item(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.price});
}

List<item> all = [
  item(
      image: 'photos/ok1.png',
      title: 'Apple AirPods Pro',
      subtitle: '21 Jan 2021',
      price: 8999),
  item(
      image: 'photos/ok2.png',
      title: 'JBL Charget 2 Speaker',
      subtitle: '20 Dec 2020',
      price: 6499),
  item(
      image: 'photos/ok3.png',
      title: 'PlayStation Controller',
      subtitle: '21 Nov 2021',
      price: 1299),
  item(
      image: 'photos/ok4.png',
      title: 'Nexus Mountain Bike',
      subtitle: '5 Oct 2021',
      price: 9100),
  item(
      image: 'photos/ok5.png',
      title: 'Wildcraft Ranger Tent',
      subtitle: '30 Sep 2021',
      price: 999),
];
