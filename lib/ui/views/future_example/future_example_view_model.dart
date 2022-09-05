import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@Singleton()
class FutureExampleViewModel extends FutureViewModel<String> {
  Future<String> getDataFromServer() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'Server Has Data';

    // Error case
    // throw Exception('Could not fetch data from server');
  }

  // inbuilt method
  @override
  Future<String> futureToRun() => getDataFromServer();

  // inbuilt method
  @override
  void onError(error) {}
}
