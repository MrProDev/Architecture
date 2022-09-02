import 'package:architecture/ui/views/startup/startup_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      viewModelBuilder: () => StartupViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.doSomething,
          child: const Icon(Icons.update_rounded),
        ),
      ),
    );
  }
}
