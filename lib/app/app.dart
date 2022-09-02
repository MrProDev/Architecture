import 'package:architecture/ui/views/home/home_view.dart';
import 'package:architecture/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page:  StartupView, initial: true),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ]
)
class AppSetup {}
