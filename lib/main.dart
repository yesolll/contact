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
          backgroundColor: Colors.amberAccent,
          title: const Center(
            child: Text('App'),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                border: Border.all(width: 10, color: Colors.black12),
                borderRadius: BorderRadius.circular(50)
              ),
              child: const Text('아좌'),
            ), Container(
              width: 50,
              height: 100,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  border: Border.all(width: 3, color: Colors.black12),
                  borderRadius: BorderRadius.circular(50)
              ),
              child: const Text('아좌'),
            )
          ],
        ),
        bottomNavigationBar: const BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.phone),
              Icon(Icons.messenger),
              Icon(Icons.account_circle),
              Icon(Icons.explore_outlined),
            ]
          ),
        ),
      )
    );
  }
}