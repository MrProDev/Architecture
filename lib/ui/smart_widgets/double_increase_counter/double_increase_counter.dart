import 'package:architecture/ui/smart_widgets/double_increase_counter/double_increase_counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounter extends StatelessWidget {
  const DoubleIncreaseCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterViewModel>.reactive(
      viewModelBuilder: () => DoubleIncreaseCounterViewModel(),
      builder: (context, model, child) => ElevatedButton(
        onPressed: model.updateCounter,
        child: Text(
          model.counter.toString(),
        ),
      ),
    );
  }
}
