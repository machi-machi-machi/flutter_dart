import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int number;
  const Counter({super.key, this.number = 0});

  @override
  Widget build(BuildContext context) {
    // 画像
    final img = Image.asset('images/sports.png');

    // 数字テキスト
    final text = Text('$number');

    // 横に並べる
    final row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [img, text]
    );

    // コンテナ
    final container = Container(
      color: Colors.amber,
      child: row,
    );

    // リターン
    return container;
  }
}