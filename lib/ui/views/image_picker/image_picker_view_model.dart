import 'dart:io';

import 'package:architecture/app/app.locator.dart';
import 'package:architecture/services/media_service.dart';
import 'package:stacked/stacked.dart';

class ImagePickerViewModel extends BaseViewModel {
  final _mediaService = locator<MediaService>();
  File? _selectedImage;

  bool get hasImageSelected => _selectedImage != null;

  File? get selectedImage => _selectedImage;

  Future selectImage({required bool fromGallery}) async {
    _selectedImage = await runBusyFuture(
      _mediaService.getImage(fromGallery: fromGallery),
    );
  }
}
