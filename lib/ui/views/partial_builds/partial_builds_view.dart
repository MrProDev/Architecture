import 'package:architecture/ui/views/partial_builds/partial_builds_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildsView extends StatelessWidget {
  const PartialBuildsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      viewModelBuilder: () => PartialBuildsViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _StringForm(),
            _TitleAndValte(),
          ],
        ),
      ),
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  const _StringForm({Key? key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    PartialBuildsViewModel model,
  ) {
    var textController = TextEditingController();
    return TextField(
      controller: textController,
      onChanged: model.updateString,
    );
  }
}

class _TitleAndValte extends ViewModelWidget<PartialBuildsViewModel> {
  const _TitleAndValte({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel model) {
    return Column(
      children: [
        Text(
          model.title,
        ),
      ],
    );
  }
}
