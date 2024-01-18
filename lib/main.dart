import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("AAA"),
            Text("BBB"),
            Text("CCC")
          ],
        ),
        bottomNavigationBar: const BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.messenger),
                Icon(Icons.account_circle),
                Icon(Icons.explore_outlined),
              ]
          ),
        )
      ),
    );
  }
}