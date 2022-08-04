import 'package:app/flavors/env_config.dart';
import 'package:flutter/material.dart';
import 'flavors/build_config.dart';
import 'flavors/enviroment.dart';
import 'app.dart';

void main() {
  EnvConfig devConfig = EnvConfig(
    appName: 'dev app',
    baseUrl: 'https://dummyjson.com',
    shouldCollectCrashLog: true,
  );
  BuildConfig.instantiate(
    envType: Environment.development,
    envConfig: devConfig,
  );
  runApp(initializeApp());
}
