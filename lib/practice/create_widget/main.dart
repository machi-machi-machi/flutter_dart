import 'package:flutter/material.dart';
import 'package:flutter_application_1/practice/create_widget/banana_counter.dart';

void main() {
  // 作成ウィジェットの呼び出し
  final count  = BananaCounter(
  );

  // アプリ
  final app = MaterialApp(
    home:Scaffold(
      body: Center(
        child: count,
      ),
    ),
  );

  runApp(app);
}