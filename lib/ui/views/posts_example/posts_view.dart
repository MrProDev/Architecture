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
      builder: (context, model, child) => Scaffold(
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : !model.hasError
                ? ListView.builder(
                    itemCount: locator<PostsService>().posts.length,
                    itemBuilder: (context, index) => Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        model.data![index].title!,
                        style: const TextStyle(fontSize: 20),
                      ),
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
      viewModelBuilder: () => PostsViewModel(),
    );
  }
}
