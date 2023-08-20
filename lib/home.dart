import 'package:flutter/material.dart';
import 'package:mangonyang/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void jung() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MyHomePage(
              title: '윤정',
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: jung,
              tooltip: 'Increment',
              child: const Text(
                '+',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Text('사진'),
            Text('사진넣기'),
          ],
        ),
      ),
    );
  }
}
