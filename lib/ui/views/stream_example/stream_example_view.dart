import 'package:architecture/ui/views/stream_example/stream_example_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StreamExampleView extends StatelessWidget {
  const StreamExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamExampleViewModel>.reactive(
      viewModelBuilder: () => StreamExampleViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.data.toString()),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.swapStreams,
          child: const Icon(Icons.swap_calls_outlined),
        ),
      ),
    );
  }
}
