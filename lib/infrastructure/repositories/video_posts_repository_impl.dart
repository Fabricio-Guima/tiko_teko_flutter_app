import 'package:tiko_teko_flutter_app/domain/datasources/video_posts_datasource.dart';
import 'package:tiko_teko_flutter_app/domain/entitites/video_post.dart';
import 'package:tiko_teko_flutter_app/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({required this.videosDatasource});
  @override
  Future<List<VideoPost>> getFavouriteVideosByUser(String userID) {    
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}