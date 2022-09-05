import 'package:architecture/ui/views/image_picker/image_picker_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ImagePickerView extends StatelessWidget {
  const ImagePickerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ImagePickerViewModel>.reactive(
      viewModelBuilder: () => ImagePickerViewModel(),
      builder: (context, model, child) => const Scaffold(),
    );
  }
}
