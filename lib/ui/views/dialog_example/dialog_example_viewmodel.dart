import 'package:architecture/app/app.locator.dart';
import 'package:architecture/enum/dialog_type.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DialogExampleViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();

  bool? _confirmationResult;
  bool? get confirmationResult => _confirmationResult;

  String? _dataResult;
  String? get dataResult => _dataResult;

  DialogResponse? _dialogResponse;
  DialogResponse? get customDialogResult => _dialogResponse;

  Future showBasicDialog() async {
    final response = await _dialogService.showDialog(
      title: 'The Basic Dialog',
      description:
          'This is the description for the dialog that shows up under the title',
      buttonTitle: 'Main title',
      cancelTitle: 'Cancel',
      barrierDismissible: true,
    );

    _confirmationResult = response?.confirmed;

    notifyListeners();
  }

  Future showConfirmationDialog() async {
    final response = await _dialogService.showConfirmationDialog(
      title: 'The Confirmation Dialog',
      description: 'Do you want to update Confiramtion state in the UI?',
      confirmationTitle: 'Yes',
      cancelTitle: 'No',
      barrierDismissible: true,
    );

    _confirmationResult = response?.confirmed;

    notifyListeners();
  }

  Future showCustomDialog() async {
    final response = await _dialogService.showCustomDialog(
      title: 'Please enter your password',
      description: 'password',
      mainButtonTitle: 'Submit',
      variant: DialogType.form,
    );

    _dataResult = response?.data;

    notifyListeners();
  }
}
