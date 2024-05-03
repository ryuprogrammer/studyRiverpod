import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'momo.g.dart';

@riverpod
class S4Notifier extends _$S4Notifier {
  @override
  Stream<String> build() {
    // supabaseのnotesテーブルにアクセスするためのストリーム
    // データベースのリアルタイム変更を取得できる
    final notesStream =
        Supabase.instance.client.from('notes').stream(primaryKey: ['id']);

    // return notesStream;
  }

  // データを変更する関数
  void updateState() async {}
}
