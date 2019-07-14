import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menu_vertical/src/app_module.dart';
import 'package:flutter/foundation.dart'    show debugDefaultTargetPlatformOverride;

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(AppModule());
}
