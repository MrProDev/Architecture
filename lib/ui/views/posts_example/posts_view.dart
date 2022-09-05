import 'package:architecture/app/app.locator.dart';
import 'package:architecture/services/posts_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'posts_viewmodel.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostsViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Scaffold(
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : !model.hasError
                ? ListView.separated(
                  key: const PageStorageKey('post-storage-key'),
                    itemCount: locator<PostsService>().posts.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemBuilder: (context, index) => ListTile(
                      tileColor: Colors.pink.withOpacity(0.1),
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink,
                        child: Text(
                          index.toString(),
                        ),
                      ),
                      title: Text(
                        model.data![index].title!,
                      ),
                      subtitle: Text(
                        model.data![index].body!,
                      ),
                      trailing: const Icon(Icons.star_border_outlined),
                    ),
                  )
                : Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      model.error.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
      ),
      viewModelBuilder: () => locator<PostsViewModel>(),
    );
  }
}
