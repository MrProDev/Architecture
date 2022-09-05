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
        appBar: AppBar(
          title: const Text('Posts'), 
        ),
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : !model.hasError
                ? ListView.separated(
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
