import 'package:flutter/material.dart';

class rowdivider extends StatelessWidget {
  const rowdivider({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.black,
          ),
        ),
        Text('Or'),
        Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
