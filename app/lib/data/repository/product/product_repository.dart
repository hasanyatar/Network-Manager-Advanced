import 'package:app/data/datasource/product/product_data_source.dart';

import '../../models/product/product.dart';

class ProductRepository {
  final ProductDataSource _productDataSource;

  ProductRepository(this._productDataSource);

  Future<List<Product>> getProducts() => _productDataSource.getProducts();
  Future<Product> getProduct(int id) => _productDataSource.getProduct(id);
}
