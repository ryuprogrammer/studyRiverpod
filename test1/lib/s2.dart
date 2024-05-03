import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's2.g.dart';

@riverpod
class S2Notifier extends _$S2Notifier {
  @override
  List<String> build() {
    // 最初のデータ
    return ['A', 'B', 'C', 'D'];
  }
}
