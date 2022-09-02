import 'package:architecture/app/app.locator.dart';
import 'package:architecture/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final String _title = 'Startup View';

  String get title => _title;

  void doSomething() {
    _navigationService.navigateTo(Routes.homeView);
  }
}
