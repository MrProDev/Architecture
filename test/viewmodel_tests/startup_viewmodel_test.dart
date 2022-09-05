import 'package:architecture/ui/views/startup/startup_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../setup/test_helpers.dart';

void main() {
  group('StartupViewmodelTest -', () {
    group('initialise -', () {
      test('when called should check if shared prefrences has a user', () async {
        var sharedPrefrences = SharedPrefrencesServiceMock();
        var model = StartupViewModel();

        await model.initialise();
        verify(sharedPrefrences.hasUser);
      });
    });
  });
}
