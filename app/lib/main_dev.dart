import 'app.dart';
import 'flavors/flavors.dart';
import 'package:flutter/material.dart';

void main() async {
  EnvConfig devConfig = EnvConfig(
    appName: 'dev app',
    baseUrl: 'https://dummyjson.com',
  );
  BuildConfig.instance.initialize(
    envType: Environment.development,
    envConfig: devConfig,
  );
  await initializeApp();
  runApp(const MyApp());
}
