import 'package:flutter/material.dart';

void main() {

  // 画像
  final img = Image.asset('images/sports_referee_var_check.png');

  // コンテナ小
  final smallContainer = Container(
    color: Colors.deepOrange,
    width: 50,
    height: 50,
  );

  // カラム（縦）
  final col = Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      smallContainer,
      img,
      smallContainer,
    ],
  );

  // コンテナ大
  final bigContainer = Container(
    color: Colors.blue,
    width: 400,
    height: 400,
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.all(20),
    child: col,
  );

  // アプリ
  final materialApp = MaterialApp(
    home: Scaffold(
      body: Center(
        child: bigContainer,
      ),
    ),
  );

  // アプリ起動
  runApp(materialApp);
}