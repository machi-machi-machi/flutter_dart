import 'package:flutter/material.dart';

/// 上記のパッケージを、インポートすることで、Text()やCenter()を使うことが可能になる。
/// constはコンパイル時定数で、実行前に値が確定しているもの。
/// 　→　メモリ効率がよい。

void main() {
  const b = 'バナナ';
  const t = Text(b);

  /// flutterでは基本的に、
  /// ・１つの子：child
  /// ・複数の子：childrem
  const c = Center(child: t);

  /// [Scaffold]
  /// Materialデザインの「土台」Widget
  const s = Scaffold(body: c);

  /// [MaterialApp]
  /// Materialデザインアプリの最上位Widget
  /// 
  /// 役割：
  /// ・テーマ管理
  /// ・ルーティング管理
  /// ・画面遷移
  /// 
  /// [home]は、最初に表示される画面のこと
  const a = MaterialApp(home: s);

  /// [runApp]
  /// flutterに対して、「このWidgetをルートにして、アプリを開始しろ」と命令
  /// ここで、Widgetツリーが描画される
  runApp(a);
}