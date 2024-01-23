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
        body: Container(
          margin: EdgeInsets.all(10),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex:3,
                child: Container(
                  height: 100,
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Image(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/images/example_img.jpg')
                  ),
                )
              ),
              Expanded(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('코치맨 레이저 675 중고 카라반 판매'),
                    Text(
                      style: TextStyle(fontSize: 11, color: Colors.black45),
                        '영통구 이의동 · 끌올 10분 전'
                    ),
                    Text('40,000,000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text('13'),
                      ],
                    ),
                  ],
                ),
              ),
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