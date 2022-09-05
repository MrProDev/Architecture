import 'package:architecture/app/app.locator.dart';
import 'package:architecture/app/app.router.dart';
import 'package:architecture/ui/views/bottom_sheet_example/setup_bottom_sheet_ui.dart';
import 'package:architecture/ui/views/dialog_example/setup_dialog_ui.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future main() async {
  await ThemeManager.initialise();
  await setupLocator();
  setupBottomSheetUi();
  setupDialogUi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.bottomSheetExampleView,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      debugShowCheckedModeBanner: false,
      onUnknownRoute: (settings) =>
          StackedRouter().onGenerateRoute(settings, Routes.homeView),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ThemeBuilder(
  //     defaultThemeMode: ThemeMode.system,
  //     darkTheme: darkThemeData(),
  //     lightTheme: lightThemeData(),
  //     builder: (_, theme, darkTheme, themeMode) => MaterialApp(
  //       theme: theme,
  //       darkTheme: darkTheme,
  //       themeMode: themeMode,
  //       initialRoute: Routes.bottomSheetExampleView,
  //       navigatorKey: StackedService.navigatorKey,
  //       onGenerateRoute: StackedRouter().onGenerateRoute,
  //       debugShowCheckedModeBanner: false,
  //       onUnknownRoute: (settings) =>
  //           StackedRouter().onGenerateRoute(settings, Routes.homeView),
  //     ),
  //   );
  // }
}
