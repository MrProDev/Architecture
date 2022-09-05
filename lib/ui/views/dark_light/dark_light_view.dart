import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'dark_light_viewmodel.dart';

class DarkLightView extends StatelessWidget {
  const DarkLightView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DarkLightViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>
                    getThemeManager(context).toggleDarkLightTheme(),
                child: const Text('Toggle'),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => DarkLightViewModel(),
    );
  }
}
