import 'package:architecture/app/app.locator.dart';
import 'package:architecture/enum/bottom_sheet_type.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BottomSheetExampleViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();

  bool? _confirmationResult;
  bool? get confirmationResult => _confirmationResult;

  Future showBasicBottomSheet() async {
    await _bottomSheetService.showBottomSheet(
      title: 'This basic bottom sheet',
      description:
          'I am Abdullah Shahid. I work as Associate Software Engineer at Devsinc. I am training in Full Stack Flutter Development. I am kinda happy here. The salary is way too low that my expectations. But the enviroment is nice plus the work hours are full flexible so just hanging in here.',
    );
  }

  Future showConfirmationBottomSheet() async {
    final respose = await _bottomSheetService.showBottomSheet(
      title: 'This basic bottom sheet',
      description:
          'I am Abdullah Shahid. I work as Associate Software Engineer at Devsinc. I am training in Full Stack Flutter Development. I am kinda happy here. The salary is way too low that my expectations. But the enviroment is nice plus the work hours are full flexible so just hanging in here.',
      confirmButtonTitle: 'Agree',
      cancelButtonTitle: 'Cancel',
    );

    _confirmationResult = respose?.confirmed;

    notifyListeners();
  }

  Future showCustomBottomSheet() async {
    await _bottomSheetService.showCustomSheet(
      title: 'Please enter your name',
      mainButtonTitle: 'Submit',
      secondaryButtonTitle: 'Cancel',
      variant: BottomSheetType.floating,
    );
  }
}
