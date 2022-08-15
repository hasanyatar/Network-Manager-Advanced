import 'package:dio/dio.dart';
import '../../core/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import '../entities/product/product.dart';
import '../repository/products_repository.dart';

class ProductUseCase implements UseCase<List<Product>, void> {
  ProductUseCase(this.repository);

  final ProductRepository repository;

  @override
  Future<Either<DioError, List<Product>>> call(params) async {
    try {
      final products = await repository.getProducts() ?? [];
      return Right(products);
    } on DioError catch (e) {
      return Left(e);
    }
  }
}
