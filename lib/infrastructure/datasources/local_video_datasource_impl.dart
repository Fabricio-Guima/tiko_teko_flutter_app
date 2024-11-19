import 'package:tiko_teko_flutter_app/domain/datasources/video_posts_datasource.dart';
import 'package:tiko_teko_flutter_app/domain/entitites/video_post.dart';
import 'package:tiko_teko_flutter_app/infrastructure/models/local_video_model.dart';

import '../../shared/data/local_video_posts.dart';

class LocalVideoDatasource implements VideoPostDatasource{
  @override
  Future<List<VideoPost>> getFavouriteVideosByUser(String userID) {   
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {    
  

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();

    return newVideos;

   
  }
}