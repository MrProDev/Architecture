import 'package:architecture/services/posts_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  group('PostsCountViewmodelTest -', () {
    group('postsCount -', () {
      test('when posts count should be correct', () async {
        var model = PostsService();

        when(await model.getPostsForUser(10));
        expect(model.posts.length, 10);
      });
    });
  });
}
