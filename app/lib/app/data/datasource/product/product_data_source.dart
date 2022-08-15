import 'package:app/app/data/models/product/product_response.dart';
import 'package:app/app/domain/repository/products_repository.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../models/product/product_model.dart';

part 'product_data_source.g.dart';

@RestApi()
abstract class ProductDataSource {
  factory ProductDataSource(Dio dio, {String baseUrl}) = _ProductDataSource;

  @GET('/products')
  Future<ProductResponse?> getProducts();

  @GET('/products/{id}')
  Future<ProductModel?> getProduct(@Path('id') int id);
}
