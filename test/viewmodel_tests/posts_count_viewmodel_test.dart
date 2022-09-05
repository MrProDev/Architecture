import 'package:architecture/services/posts_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PostsCountViewmodelTest -', () {
    group('postsCount -', () {
      test('when posts count should be correct', () async {
        var model = PostsService();
        await model.getPostsForUser(10);
        expect(10, model.posts.length);
      });
    });
  });
}
