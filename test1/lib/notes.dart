// freezedを使用して、ファイル生成するお

///////// a. パッケージをインポートし、自動生成されるファイルを記述 /////////
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
// Freezedで生成されるデータクラス
part 'notes.freezed.dart';
// jsonを変換する処理が生成されるクラス
// part 'notes.g.dart';

///////// b. コード生成するためのクラスを作成 /////////

// freezedでコード生成するために「@freezed」を記述
@freezed
class Notes with _$Notes {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory Note({
    required int id,
    required String createAt,
    required String todoItem,
    required String isDone,
  }) = _Note;

  // json形式で受け取るためのコードを生成するために記述
  // factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
