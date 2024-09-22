import 'package:flutter/material.dart';
import 'package:tiko_teko_flutter_app/domain/entitites/video_post.dart';
import 'package:tiko_teko_flutter_app/infrastructure/models/local_video_model.dart';
import 'package:tiko_teko_flutter_app/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  // todo repository, Datasource

  bool intialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()).toList();
    //todo carregar vídeos
    videos.addAll(newVideos);
    intialLoading = false;
    notifyListeners();
  }
}