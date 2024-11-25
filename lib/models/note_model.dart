
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';

@freezed
class NoteModel with _$NoteModel {
  factory NoteModel({
    required String title,
    required String content,
    @JsonKey(name: "created_at") required String createdAt,
    required String color,
  }) = _NoteModel;
	
  factory NoteModel.fromJson(Map<String, dynamic> json) =>
			_$NoteModelFromJson(json);
}
