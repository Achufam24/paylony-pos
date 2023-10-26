import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:paylony_pos/app/views/app.dart';
import 'package:paylony_pos/core/utils/system_util.dart';
import 'package:paylony_pos/locator.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemUtil.overrideNavColors();
    FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };

  setup();
  // runZonedGuarded(() async {
    runApp(const PaylonyPos()); // starting point of app
  // }, (error, stackTrace) {
  //   print("Error FROM OUT_SIDE FRAMEWORK ");
  //   print("--------------------------------");
  //   print("Error :  $error");
  //   print("StackTrace :  $stackTrace");
  // });
  // runApp(const Tracman());
}
