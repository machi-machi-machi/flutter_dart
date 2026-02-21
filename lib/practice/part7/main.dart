import 'package:flutter/material.dart';

void main() {
  networkTest() {
    debugPrint('通信開始');
    debugPrint('通信中');
    debugPrint('通信終了');
  }

  final button = ElevatedButton(
    // onPressedをnullにするとボタン自体が非活性に
    onPressed: networkTest,
    child: Text('押して'),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green
    ),
  );

  // アプリ
  final app = MaterialApp(
    home: Scaffold(
      body: Center(
        child: button,
      ),
    ),
  );

  runApp(app);
}