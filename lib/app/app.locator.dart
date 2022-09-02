// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

// ignore: depend_on_referenced_packages

import 'package:architecture/services/counter_service.dart';
// ignore: depend_on_referenced_packages
import 'package:stacked_core/stacked_core.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator(
    {String? environment, EnvironmentFilter? environmentFilter}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());

  // Counter dependencies
  locator.registerLazySingleton(() => CounterService());
}
