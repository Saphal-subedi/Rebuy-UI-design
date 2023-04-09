import 'package:firstscren/RowButton.dart';
import 'package:flutter/material.dart';

class message extends StatelessWidget {
  const message({super.key});

  @override
  Widget build(BuildContext context) {
    var i = 0;
    return SafeArea(
        child: Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              rowbutton(
                  icon1: Icons.arrow_back_ios_new_sharp,
                  icon2: Icons.menu,
                  title: 'Message'),
              SizedBox(height: 20.0),
              Container(
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFDEDEDE),
                ),
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  Text(
                    'Search for guitar,books and books...',
                    style: TextStyle(
                      color: Color(0xFF828282),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.search, color: Color(0xFF828282)),
                  SizedBox(width: 30),
                ]),
              ),
              SizedBox(height: 20),
              for (i = 0; i < alll.length; i++)
                Card(
                  child: Container(
                    height: 80,
                    child: Center(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('${alll[i].img}'),
                        ),
                        //     child: Image.asset(
                        //   '${alll[i].img}',
                        //   fit: BoxFit.fill,
                        // )),
                        title: Text(
                          '${alll[i].title}',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(
                          '${alll[i].subtitle}',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ]),
      ),
    ));
  }
}

class item {
  String img = '';
  String title = '';

  String time = '';
  String subtitle = '';
  item(
      {required this.img,
      required this.title,
      required this.time,
      required this.subtitle});
}

List<item> alll = [
  item(
      img: 'photos/1.jpg',
      title: 'Messi',
      time: '9:30 AM',
      subtitle: 'I am messi I want to meet you '),
  item(
      img: 'photos/203.jpg',
      title: 'Messi',
      time: '9:30 AM',
      subtitle: 'I am messi I want to meet you '),
  item(
      img: 'photos/1.jpg',
      title: 'Messi',
      time: '9:30 AM',
      subtitle: 'I am messi I want to meet you '),
  item(
      img: 'photos/1.jpg',
      title: 'Messi',
      time: '9:30 AM',
      subtitle: 'I am messi I want to meet you '),
  item(
      img: 'photos/1.jpg',
      title: 'Messi',
      time: '9:30 AM',
      subtitle: 'I am messi I want to meet you '),
  item(
      img: 'photos/1.jpg',
      title: 'Messi',
      time: '9:30 AM',
      subtitle: 'I am messi I want to meet you '),
  item(
      img: 'photos/1.jpg',
      title: 'Messi',
      time: '9:30 AM',
      subtitle: 'I am messi I want to meet you '),
  item(
      img: 'photos/1.jpg',
      title: 'Messi',
      time: '9:30 AM',
      subtitle: 'I am messi I want to meet you '),
  item(
      img: 'photos/1.jpg',
      title: 'Messi',
      time: '9:30 AM',
      subtitle: 'I am messi I want to meet you '),
];
