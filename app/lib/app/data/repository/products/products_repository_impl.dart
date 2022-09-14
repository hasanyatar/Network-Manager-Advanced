import '../../../domain/entities/product/product.dart';
import '../../../domain/repository/products_repository.dart';
import '../../datasource/remote/product/product_data_source.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductDataSource _productDataSource;

  ProductRepositoryImpl(this._productDataSource);

  @override
  Future<List<Product>?> getProducts() async =>
      await _productDataSource.getProducts().then((value) {
        return value?.products ?? [];
      });
}
