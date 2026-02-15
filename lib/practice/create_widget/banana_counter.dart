import 'package:flutter/material.dart';

class BananaCounter extends StatelessWidget {
  // 数
  final int? number;
  const BananaCounter({super.key, this.number});

  @override
  Widget build(BuildContext context) {
    // 画像
    final img = Image.asset('images/sports.png');

    // 数字
    final text = Text(
      '${number ?? 0}',
      style: const TextStyle(fontSize: 32),
    );

    // 横に並べる
    final row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [text, img, text,]
    );

    // 色と大きさ決定
    final con = Container(
      color: Colors.blue,
      child: row, 
    );

    // リターン
    return con;
  }
}