import 'package:flutter/material.dart';

void main() {

  // Column
  final col = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const [
      Text('レモン'),
      Text('リンゴ'),
      Text('ブドウ'),
    ],
  );

  // Row
  final row = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [col, col, col],
  );

  // 起動
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: row,
        ),
      ),
    )
  );
}