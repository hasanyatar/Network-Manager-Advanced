import 'package:app/app/domain/usecase/products_usecase.dart';
import 'package:app/app/injector.dart';
import 'package:app/flavors/flavors.dart';
import 'package:dartz/dartz.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() async {
    await initializeDependencies();
  });
  EnvConfig devConfig = EnvConfig(
    appName: 'dev app',
    baseUrl: 'https://dummyjson.com',
  );
  BuildConfig.instance.initialize(envType: Environment.development, envConfig: devConfig);

  group('products', () {
    test("should return a list of products", () async {
      final data = injector.get<ProductUseCase>().call(null);
      expect(Right(data), isNotNull);
    });
  });
}
