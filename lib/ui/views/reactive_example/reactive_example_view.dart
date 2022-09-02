import 'package:architecture/ui/smart_widgets/double_increase_counter/double_increase_counter.dart';
import 'package:architecture/ui/smart_widgets/single_increase_counter/single_increase_counter.dart';
import 'package:flutter/material.dart';

class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SingleIncreaseCounter(),
            DoubleIncreaseCounter(),
          ],
        ),
      ),
    );
  }
}
