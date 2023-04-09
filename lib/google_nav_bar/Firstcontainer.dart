import 'package:flutter/material.dart';

class Information {
  String path = '';
  String title = '';
  String subtitle = '';
  double cost = 0;
  Information(
      {required this.path,
      required this.title,
      required this.subtitle,
      required this.cost});
}

List<Information> all = [
  Information(
    path: 'photos/Product.png',
    title: 'Batman Toy',
    subtitle: 'Funskool',
    cost: 899,
  ),
  Information(
    path: 'photos/1.jpg',
    title: 'Batman Toy',
    subtitle: 'Funskool',
    cost: 8999,
  ),
  Information(
    path: 'photos/29.jpg',
    title: 'Batman Toy',
    subtitle: 'Funskool',
    cost: 8899,
  ),
  Information(
    path: 'photos/43.jpg',
    title: 'Batman Toy',
    subtitle: 'Funskool',
    cost: 8999,
  ),
  Information(
    path: 'photos/80.jpg',
    title: 'Batman Toy',
    subtitle: 'Funskool',
    cost: 8909,
  ),
  Information(
    path: 'photos/112.jpg',
    title: 'Batman Toy',
    subtitle: 'Funskool',
    cost: 8959,
  )
];

class firstcontainer extends StatelessWidget {
  const firstcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Container(
            height: 300,
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  height: 220,
                  width: 250,
                  child: Image.asset(
                    '${all[index].path}',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 5),
                ListTile(
                  title: Text(
                    '${all[index].title}',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  subtitle: Text(
                    '${all[index].subtitle}',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  trailing: Text(
                    '\$${all[index].cost}',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
        separatorBuilder: (context, index) => SizedBox(width: 20),
        itemCount: all.length,
      ),
    );
  }
}
