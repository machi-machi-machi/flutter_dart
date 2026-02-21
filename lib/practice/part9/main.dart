import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// このpart9の流れは、
/// ・StateProvider で状態を持つ
/// ・ConsumerWidget が状態を監視
/// ・ボタンで状態を変更する
/// ・変更されたらUIが再構築される

void main() {
  // アプリ
  const app = MaterialApp(home: Example());

  /// ProveiderScope
  ///  → Riverpodの「状態管理のコンテナ」
  /// 
  /// 内部的には、Providerを保存・管理するための入れ物
  /// これがないと、ref.watch()は機能しない。
  const scope = ProviderScope(child: app);

  runApp(scope);
}

/// StateProvider
/// 「String型の状態を持つ箱みたいな物」
/// 
/// 中身は、
/// StateProvider
///   ┗ state
///   ┗ notifier
final nicknameProvider = StateProvider<String>((ref) {
  // 変化するデータ
  return "ドッグ";
});

// 画面

/// [ConsumerWidget]
///  → Providerを使えるStatelessWidget
/// 
/// [WidgetRef]
///  → Providerと通信するためのハンドル
/// ※できること
/// ・ref.watch()  監視
/// ・ref.read()   取得
/// ・ref.listen() 変更検知のみ

class Example extends ConsumerWidget {
  const Example({super.key});

  /// --------------------------------
  /// buildは何度も呼ばれる前提で作る
  /// これがflutterの理想である。
  /// --------------------------------

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  
    //  データを見張る
  
    /// [watch]
    /// 「このProviderが変化したら、このWidgetを再構築してね」
    /// という登録処理を行う
    final nickname = ref.watch(nicknameProvider);

    return Scaffold(
      // ニックネーム 1
      appBar: AppBar(title: Text(nickname)),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ニックネーム 2
            Text(nickname),
            // ボタン A
            ElevatedButton(onPressed: () => tapA(ref), child: const Text('A')),
            // ボタン B
            ElevatedButton(onPressed: () => tapB(ref), child: const Text('B')),
            // ボタン C
            ElevatedButton(onPressed: () => tapC(ref), child: const Text('C')),
            // ニックネーム 3
            Text(nickname),
          ],
        ),
      ),
    );
  }

  //  notifier でデータを変更する

  /// [read]
  /// 一度だけ取得
  /// 監視はしない
  /// 再buildしない（buildしているのは、watch!!!）

  /// [notifier（通知者）]
  /// stateを変更するための操作クラス

  void tapA(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = 'キャット';
  }

  void tapB(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = 'バード';
  }

  void tapC(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = 'フィッシュ';
  }
}