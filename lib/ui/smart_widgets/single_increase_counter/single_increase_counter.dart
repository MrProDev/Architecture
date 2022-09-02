import 'package:architecture/ui/smart_widgets/single_increase_counter/single_increase_counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounter extends StatelessWidget {
  const SingleIncreaseCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleIncreaseCounterViewModel>.reactive(
      viewModelBuilder: () => SingleIncreaseCounterViewModel(),
      builder: (context, model, child) => ElevatedButton(
        onPressed: model.updateCounter,
        child: Text(
          model.counter.toString(),
        ),
      ),
    );
  }
}
