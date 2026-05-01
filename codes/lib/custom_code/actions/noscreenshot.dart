// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:no_screenshot/no_screenshot.dart';

final _noScreenshot = NoScreenshot.instance;

Future<void> screenshotsoff() async {
  await _noScreenshot.screenshotOff();
}

Future noscreenshot() async {
  screenshotsoff();
}
// Set your action name, define your arguments and return parameter
