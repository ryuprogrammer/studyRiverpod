import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's1.g.dart';

@riverpod
class S1Notifier extends _$S1Notifier {
  @override
  int build() {
    // 最初のデータ
    return 0;
  }

  // 状態を変更するコードはNofirierに書いていく
  void updateState() {
    state += 1;
  }
}
