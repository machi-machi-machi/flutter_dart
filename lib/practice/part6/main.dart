import 'package:flutter/material.dart';
import 'package:flutter_application_1/practice/part6/counter.dart';

void main() {
  // 自作ウィジェット呼び出し
  final counter = Counter(
    number: 888,
  );

  // アプリ
  final app = MaterialApp(
    home: Scaffold(
      body: Center(
        child: counter,
      ),
    ),
  );

  runApp(app);
}