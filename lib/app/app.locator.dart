// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

// ignore: depend_on_referenced_packages
import 'package:stacked_core/stacked_core.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api.dart';
import '../services/counter_service.dart';
import '../services/media_service.dart';
import '../services/posts_service.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator(
    {String? environment, EnvironmentFilter? environmentFilter}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => CounterService());
  locator.registerLazySingleton(() => MediaService());
  locator.registerLazySingleton(() => PostsService());
}
