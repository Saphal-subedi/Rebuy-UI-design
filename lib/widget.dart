import 'package:flutter/material.dart';

class MainButton {
  String imagee;
  MainButton({required this.imagee});
}

List<MainButton> mainbutton = [
  MainButton(imagee: "photos/Google.png"),
  MainButton(imagee: "photos/Twitter.png"),
  MainButton(imagee: "photos/Apple.png"),
];

class CustumButton1 extends StatelessWidget {
  const CustumButton1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 57,
          width: 100,
          decoration: BoxDecoration(
            color: Color(0xFFDEDEDE),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image(
            image: AssetImage(mainbutton[0].imagee),
          ),
        ),
        Container(
          height: 57,
          width: 100,
          decoration: BoxDecoration(
            color: Color(0xFFDEDEDE),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image(
            image: AssetImage(mainbutton[1].imagee),
          ),
        ),
        Container(
          height: 57,
          width: 100,
          decoration: BoxDecoration(
            color: Color(0xFFDEDEDE),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image(
            image: AssetImage(mainbutton[2].imagee),
          ),
        ),
      ],
    );
  }
}
