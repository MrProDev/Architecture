
import 'package:architecture/app/app.locator.dart';
import 'package:architecture/datamodels/user.dart';
import 'package:architecture/services/api.dart';
import 'package:stacked/stacked.dart';

class UserViewModel extends FutureViewModel<User> {
  final int userId;
  UserViewModel(this.userId);

  @override
  Future<User> futureToRun() => locator<Api>().getUserProfile(userId);
}
