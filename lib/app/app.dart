import 'package:architecture/services/api.dart';
import 'package:architecture/services/counter_service.dart';
import 'package:architecture/services/media_service.dart';
import 'package:architecture/services/posts_service.dart';
import 'package:architecture/ui/dark_light/dark_light_view.dart';
import 'package:architecture/ui/multiple_themes/multiple_themes_view.dart';
import 'package:architecture/ui/views/dialog_example/dialog_example_view.dart';
import 'package:architecture/ui/views/future_example/future_example_view.dart';
import 'package:architecture/ui/views/future_example/future_example_view_model.dart';
import 'package:architecture/ui/views/home/home_view.dart';
import 'package:architecture/ui/views/image_picker/image_picker_view.dart';
import 'package:architecture/ui/views/partial_builds/partial_builds_view.dart';
import 'package:architecture/ui/views/posts_example/posts_view.dart';
import 'package:architecture/ui/views/posts_example/posts_viewmodel.dart';
import 'package:architecture/ui/views/reactive_example/reactive_example_view.dart';
import 'package:architecture/ui/views/startup/startup_view.dart';
import 'package:architecture/ui/views/stream_example/stream_example_view.dart';
import 'package:architecture/ui/views/stream_example/stream_example_view_model.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: FutureExampleView),
    MaterialRoute(page: ImagePickerView),
    MaterialRoute(page: PartialBuildsView),
    MaterialRoute(page: ReactiveExampleView),
    MaterialRoute(page: StreamExampleView),
    MaterialRoute(page: PostsView),
    MaterialRoute(page: DialogExampleView),
    MaterialRoute(page: MultipleThemesView),
    MaterialRoute(page: DarkLightView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: Api),
    LazySingleton(classType: CounterService),
    LazySingleton(classType: MediaService),
    LazySingleton(classType: PostsService),
    LazySingleton(classType: PostsViewModel),
    LazySingleton(classType: StreamExampleViewModel),
    LazySingleton(classType: FutureExampleViewModel),
  ],

  
)
class AppSetup {}
