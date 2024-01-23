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
          backgroundColor: Colors.indigo,
          title: const Text('App'),
          leading: const Icon(Icons.navigate_before),
          actions: const [
            Icon(Icons.star),
            // ...
          ],
        ),
        body: SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: const Text('ElevatedButton'),
              ), TextButton(
                child: const Text('TextButton'),
                onPressed: () {
                  // Respond to button press
                },
              ), IconButton(
                  onPressed: () {
                    // Respond to button press
                  }, icon: const Icon(Icons.accessibility),
              )
            ],
          ),
          // child: Text(
          //   '텍스트',
          //   style: TextStyle(
          //       color: Color(0xff47a801), // Colors.green // fromRGBO
          //       fontSize: 30,
          //       fontWeight: FontWeight.w700,
          //   ),
          // ),
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