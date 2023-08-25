import 'package:flutter/material.dart';

import 'landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Landing(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      if (_counter >= 5) {
        _counter = 0;
      } else {
        _counter = addNumber(_counter);
      }

      print(_counter);
    });
  }

  void j() {
    setState(() {
      if (_counter <= -5) {
        _counter = 0;
      } else {
        _counter--;
      }
      print(_counter);
    });
  }

  int addNumber(int input) {
    int result = 0;
    result = input + 1;
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'mangonyang',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: j,
                  tooltip: 'Increment',
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
