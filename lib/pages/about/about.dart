import 'package:flutter/material.dart';
class AboutDev extends StatelessWidget {
  const AboutDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('About',style: TextStyle(fontSize: 60),),
      ),
    );
  }
}