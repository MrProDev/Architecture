
import 'package:architecture/app/app.locator.dart';
import 'package:architecture/datamodels/comment.dart';
import 'package:stacked/stacked.dart';import 'package:architecture/services/api.dart';
class CommentsViewModel extends FutureViewModel<List<Comment>> {
  final int postId;
  CommentsViewModel(this.postId);

  @override
  Future<List<Comment>> futureToRun() => locator<Api>().getCommentsForPost(postId);
}
