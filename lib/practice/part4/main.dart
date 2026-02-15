import 'package:flutter/material.dart';

/// 写真を用いるために、assets/images フォルダを作成し、そこに格納
/// 
/// dartでは、pubspec.yaml（パブスペック ヤムル）が大事な役割を担っている
///  → flutter / dart プロジェクトの設計図ファイル
/// 
/// ・パッケージ（ライブラリ）依存関係
///   →　「このアプリは何のライブラリを使いますか？」を定義している
/// ・アプリ情報
/// ・画像やフォントの登録
/// 
/// 今回画像を使用するために、上記フォルダのflutter:の箇所にassetsフォルダを使えるように設定

void main() {

  // Imageの取得
  final img = Image.asset('images/sports.png');

  // Row
  final row = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [img, img, img],
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