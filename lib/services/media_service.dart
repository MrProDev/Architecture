import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
class MediaService {
  Future<File?> getImage({required bool fromGallery}) async {
    try {
      final image = await ImagePicker().pickImage(
          source: fromGallery ? ImageSource.gallery : ImageSource.camera);
      return File(image!.path);
    } on PlatformException {
      return null;
    }
  }
}
