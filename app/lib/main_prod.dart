import 'package:app/flavors/env_config.dart';
import 'package:flutter/material.dart';

import 'flavors/build_config.dart';
import 'flavors/enviroment.dart';
import 'app.dart';

void main() {
  EnvConfig prodConfig = EnvConfig(
    appName: 'prod app',
    baseUrl: 'http://herokuapp.com',
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.production,
    envConfig: prodConfig,
  );
  runApp(initializeApp());
}
