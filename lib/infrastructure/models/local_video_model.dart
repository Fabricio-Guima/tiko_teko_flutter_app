// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:tiko_teko_flutter_app/domain/entitites/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) => LocalVideoModel(
        name: json["name"] ?? 'Sem nome',
        videoUrl: json["videoUrl"],
        likes: json["likes"] ?? 0,
        views: json["views"] ?? 0,
  );

  VideoPost toVideoPostEntity() => VideoPost(
        name: name,
        likes: likes,
        views: views,
        videoUrl: videoUrl,
      );
}
