import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../models/product/product.dart';

part 'product_data_source.g.dart';

@RestApi()
abstract class ProductDataSource {
  factory ProductDataSource(Dio dio, {String baseUrl}) = _ProductDataSource;

  @GET('/products')
  Future<List<Product>> getProducts();

  @GET('/products/{id}')
  Future<Product> getProduct(@Path('id') int id);
}
