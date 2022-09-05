// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/dark_light/dark_light_view.dart';
import '../ui/multiple_themes/multiple_themes_view.dart';
import '../ui/views/dialog_example/dialog_example_view.dart';
import '../ui/views/future_example/future_example_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/image_picker/image_picker_view.dart';
import '../ui/views/partial_builds/partial_builds_view.dart';
import '../ui/views/posts_example/posts_view.dart';
import '../ui/views/reactive_example/reactive_example_view.dart';
import '../ui/views/startup/startup_view.dart';
import '../ui/views/stream_example/stream_example_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String futureExampleView = '/future-example-view';
  static const String imagePickerView = '/image-picker-view';
  static const String partialBuildsView = '/partial-builds-view';
  static const String reactiveExampleView = '/reactive-example-view';
  static const String streamExampleView = '/stream-example-view';
  static const String postsView = '/posts-view';
  static const String dialogExampleView = '/dialog-example-view';
  static const String multipleThemesView = '/multiple-themes-view';
  static const String darkLightView = '/dark-light-view';
  static const all = <String>{
    startupView,
    homeView,
    futureExampleView,
    imagePickerView,
    partialBuildsView,
    reactiveExampleView,
    streamExampleView,
    postsView,
    dialogExampleView,
    multipleThemesView,
    darkLightView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.futureExampleView, page: FutureExampleView),
    RouteDef(Routes.imagePickerView, page: ImagePickerView),
    RouteDef(Routes.partialBuildsView, page: PartialBuildsView),
    RouteDef(Routes.reactiveExampleView, page: ReactiveExampleView),
    RouteDef(Routes.streamExampleView, page: StreamExampleView),
    RouteDef(Routes.postsView, page: PostsView),
    RouteDef(Routes.dialogExampleView, page: DialogExampleView),
    RouteDef(Routes.multipleThemesView, page: MultipleThemesView),
    RouteDef(Routes.darkLightView, page: DarkLightView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    FutureExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const FutureExampleView(),
        settings: data,
      );
    },
    ImagePickerView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ImagePickerView(),
        settings: data,
      );
    },
    PartialBuildsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PartialBuildsView(),
        settings: data,
      );
    },
    ReactiveExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ReactiveExampleView(),
        settings: data,
      );
    },
    StreamExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StreamExampleView(),
        settings: data,
      );
    },
    PostsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PostsView(),
        settings: data,
      );
    },
    DialogExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DialogExampleView(),
        settings: data,
      );
    },
    MultipleThemesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MultipleThemesView(),
        settings: data,
      );
    },
    DarkLightView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DarkLightView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Extension for strongly typed navigation
/// *************************************************************************

extension NavigatorStateExtension on NavigationService {
  Future<dynamic> navigateToStartupView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.startupView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToHomeView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.homeView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToFutureExampleView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.futureExampleView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToImagePickerView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.imagePickerView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToPartialBuildsView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.partialBuildsView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToReactiveExampleView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.reactiveExampleView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToStreamExampleView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.streamExampleView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToPostsView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.postsView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToDialogExampleView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.dialogExampleView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToMultipleThemesView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.multipleThemesView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }

  Future<dynamic> navigateToDarkLightView({
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo(
      Routes.darkLightView,
      id: routerId,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
      transition: transition,
    );
  }
}
