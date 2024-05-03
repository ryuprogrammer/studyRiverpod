import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test1/s1.dart';

class MyWidget1 extends ConsumerWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // widgetのrefでProviderをwatchする！
    // watchなので、Provider内のデータを見続ける！
    final s1 = ref.watch(s1NotifierProvider);

    // ボタン
    final button = ElevatedButton(
        onPressed: () {
          // ノティファイアを呼ぶ
          final notidier = ref.read(s1NotifierProvider.notifier);
          // データを更新
          notidier.updateState();
        },
        child: const Text('ボタン'));

    // テキスト
    final s1Text = Text('$s1');

    // 縦に並べる
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [s1Text, button],
    );
  }
}
