import 'package:tiko_teko_flutter_app/domain/entitites/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getFavouriteVideosByUser(String userID);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
