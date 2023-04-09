import 'package:flutter/material.dart';
class provider extends StatelessWidget {
  const provider({super.key});
  String value="Hello world";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar("Provider is given"),
      body: Center(
        child: Text(
          value,

        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){}

        child: Icon(Icons.add),
        
      ),
    );
}
