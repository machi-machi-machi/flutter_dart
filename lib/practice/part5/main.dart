import 'package:flutter/material.dart';

void main() {

  // Imageの取得
  final img = Image.asset('images/sports.png');

  // 小さいコンテナ
  final smallCon = Container(
    color: Colors.deepOrange,
    width: 50,
    height: 50,
  );

  // Column
  final col = Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [smallCon, img, smallCon],
  );

  // 大きいコンテナ
  final bigCon = Container(
    color: Colors.blue,
    width: 400,
    height: 400,
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.all(20),
    child: col,
  );

  // 起動
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: bigCon,
        ),
      ),
    )
  );
}