import 'package:flutter/material.dart';

void main() {
  // テキストフィールドのコントローラー
  final controller = TextEditingController();

  // テキストフィールド
  final textField = TextField(
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'あなたの名前',
      hintText: 'カタカナで入力してください',
      errorText: '名前が長すぎます',
    ),
  );

  // ボタン押下時関数
  btnClick() {
    // コントローラーから入力文字列を取り出す
    debugPrint(controller.text);
  }

  // ボタン
  final button = ElevatedButton(onPressed: btnClick, child: Text('ボタン'));

  // アプリ
  final app = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // コンテナを使用してテキストフィールドの大きさを調整
            Container(
              width: 300,
              child: textField,
            ),
            // コンテナの下にボタンを配置
            button,
          ],
        ),
      ),
    ),
  );

  runApp(app);
}