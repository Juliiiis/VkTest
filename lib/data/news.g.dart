// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) => News(
      imagePath: json['imagePath'] as String,
      title: json['title'] as String,
      time: json['time'] as String,
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'imagePath': instance.imagePath,
      'title': instance.title,
      'time': instance.time,
    };
