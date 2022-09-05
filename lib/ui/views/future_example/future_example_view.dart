import 'package:architecture/app/app.locator.dart';
import 'package:architecture/ui/views/future_example/future_example_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FutureExampleView extends StatelessWidget {
  const FutureExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      viewModelBuilder: () => locator<FutureExampleViewModel>(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              model.isBusy
                  ? const CircularProgressIndicator.adaptive()
                  : Text(model.data ?? 'No Data'),
                  const _ErrorMessage(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ErrorMessage extends ViewModelWidget<FutureExampleViewModel> {
  const _ErrorMessage({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, FutureExampleViewModel model) {
    return model.hasError
        ? const Center(
            child: Text('Could not fetch data from server'),
          )
        : const SizedBox();
  }
}
