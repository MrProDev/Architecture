import 'package:architecture/app/app.locator.dart';
import 'package:architecture/datamodels/post.dart';
import 'package:architecture/services/api.dart';
import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
class PostsService {
  List<Post> _posts = [];

  bool get hasPosts => _posts.isNotEmpty;
  List<Post> get posts => _posts;

  Future<List<Post>> getPostsForUser(int userId) async {
    _posts = await locator<Api>().getPostsFromUser(userId);
    return _posts;
  }
}
