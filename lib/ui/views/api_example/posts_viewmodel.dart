import 'package:architecture/app/app.locator.dart';
import 'package:architecture/datamodels/post.dart';
import 'package:architecture/services/api.dart';
import 'package:stacked/stacked.dart';

class PostsViewModel extends FutureViewModel<List<Post>> {
  final int userId;
  PostsViewModel(this.userId);

  @override
  Future<List<Post>> futureToRun() => locator<Api>().getPostsFromUser(userId);
}
