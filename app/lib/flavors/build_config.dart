import 'env_config.dart';
import 'enviroment.dart';

class BuildConfig {
  late final Environment environment;
  late final EnvConfig config;
  static final BuildConfig instance = BuildConfig._internal();

  BuildConfig._internal();

  BuildConfig initialize({
    required Environment envType,
    required EnvConfig envConfig,
  }) {
    instance.environment = envType;
    instance.config = envConfig;
    return instance;
  }
}
