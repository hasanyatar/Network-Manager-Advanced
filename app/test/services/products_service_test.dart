import 'package:app/data/models/product/product.dart';
import 'package:app/app/models/products.dart';
import 'package:app/core/network/network_manager/network_manager.dart';
import 'package:app/flavors/build_config.dart';
import 'package:app/flavors/env_config.dart';
import 'package:app/flavors/enviroment.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    BuildConfig.instantiate(
        envType: Environment.production,
        envConfig: EnvConfig(
          appName: "${Environment.production}",
          baseUrl: "https://dummyjson.com",
          shouldCollectCrashLog: true,
        ));
  });
  group('Products service', () {
    test(': Status 200', () async {
      var response = await NetworkManager.instance.service.get('/products');

      expect(response.statusCode, 200);
    });
    group('Model', () {
      test(': model is correct for Product', () async {
        var response = await NetworkManager.instance.service.get('/products');

        response.data["products"].forEach((product) {
          expect(Product.fromJson(product), isA<Product>());
        });
      });
      test(': model is correct for Product list', () async {
        var response = await NetworkManager.instance.service.get('/products');
        var productsModel = Products.fromJson(response.data);
        expect(productsModel.products, isA<List<Product>>());
        expect(productsModel, isA<Products>());
        expect(productsModel.products!.length, greaterThan(0));
      });
    });
  });
}
