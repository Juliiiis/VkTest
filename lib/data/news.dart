
import 'package:json_annotation/json_annotation.dart';

part 'news.g.dart';

@JsonSerializable()
class News{
  final String imagePath;
  final String title;
  final String time;

  News({
    required this.imagePath,
    required this.title,
    required this.time,
  });

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
  Map<String, dynamic> toJson() => _$NewsToJson(this);
}