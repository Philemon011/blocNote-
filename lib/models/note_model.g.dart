// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteModelImpl _$$NoteModelImplFromJson(Map<String, dynamic> json) =>
    _$NoteModelImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: json['created_at'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$NoteModelImplToJson(_$NoteModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'created_at': instance.createdAt,
      'color': instance.color,
    };
