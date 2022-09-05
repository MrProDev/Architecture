import 'package:architecture/app/app.locator.dart';
import 'package:architecture/datamodels/post.dart';
import 'package:architecture/services/posts_service.dart';
import 'package:stacked/stacked.dart';

class PostsViewModel extends FutureViewModel<List<Post>> {
  @override
  Future<List<Post>> futureToRun() =>
      locator<PostsService>().getPostsForUser(5);
}
