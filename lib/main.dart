import 'package:flutter/material.dart';

import 'src/instrument_tuner.dart';
import 'src/modules/settings/settings_controller.dart';
import 'src/modules/settings/settings_service.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();
  runApp(MyApp(settingsController: settingsController));
}
