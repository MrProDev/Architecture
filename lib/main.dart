import 'package:architecture/app/app.locator.dart';
import 'package:architecture/app/app.router.dart';
import 'package:architecture/ui/views/reactive_example/reactive_example_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  runApp(const MyApp());
  setupLocator();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ReactiveExampleView(),
      // initialRoute: Routes.startupView,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
