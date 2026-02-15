# flutter_application_1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## flutter & dart

〇 flutter（UIを作るための仕組み）
・Widgetシステム
・レイアウト計算
・アニメーション
・タッチ処理
・画面を描画するエンジン（独自の描画エンジン）
　→　Web, iOS, Android, Windows, macOSなど、全部同じコードで動く

　*** 正確なイメージ ***
    Web：HTML → ブラウザが描画
    flutter：dart → flutterエンジンが直接描画（ブラウザを介さない）

★ flutterは、再描画時は変更点のみなので軽量！


〇 dart（言語）
・UIを書く
・ロジックを書く
・非同期処理を書く
・サーバーも書ける
　→　全てを１つの言語で書いているのがflutterの特徴ということになる。