import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test1/s1.dart';

class MyWidget1 extends ConsumerWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // widgetのrefでProviderをwatchする！
    final s1 = ref.watch(s1NotifierProvider);

    return Text('$s1');
  }
}
