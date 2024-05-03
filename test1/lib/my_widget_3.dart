import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test1/s3.dart';

class MyWidget3 extends ConsumerWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s3 = ref.watch(s3NotifierProvider);

    final widget = s3.when(
      loading: () => const Text('準備中'),
      error: (error, stackTrace) => const Text('エラー'),
      data: (d) => Text('$d'),
    );
    return Text('ここにデータが表示されます');
  }
}
