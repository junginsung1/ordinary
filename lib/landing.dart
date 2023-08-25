import 'package:flutter/material.dart';
import 'package:mangonyang/constants.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 150,
        height: MediaQuery.of(context).size.height,
        color: primaryColor,
        child: Center(
          child: Text('컨테이너'),
        ),
      ),
    );
  }
}
