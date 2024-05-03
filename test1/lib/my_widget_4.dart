import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test1/s4.dart';

class MyWidget4 extends ConsumerWidget {
  const MyWidget4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s4 = ref.watch(s4NotifierProvider);

    final widget = s4.when(
      loading: () => const Text('読み込み中'),
      error: (error, stackTrace) => const Text('エラー'),
      data: (data) => Text('$data'),
    );
    return widget;
  }
}
