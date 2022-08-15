import 'app.dart';
import 'flavors/flavors.dart';
import 'package:flutter/material.dart';

void main() async {
  EnvConfig prodConfig = EnvConfig(
    appName: 'prod app',
    baseUrl: 'http://herokuapp.com',
  );

  BuildConfig.instance.initialize(
    envType: Environment.production,
    envConfig: prodConfig,
  );
  initializeApp();
  runApp(const MyApp());
}
