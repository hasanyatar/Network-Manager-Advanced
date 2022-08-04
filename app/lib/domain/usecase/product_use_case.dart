import '../../data/models/product/product.dart';
import '../../data/repository/product/product_repository.dart';

class ProductUseCase {
  ProductUseCase(this.repository);

  final ProductRepository repository;

  Future<Product> getProduct(int id) async {
    return await repository.getProduct(id);
  }
}
