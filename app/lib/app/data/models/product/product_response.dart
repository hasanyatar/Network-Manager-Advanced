import 'package:app/app/data/models/product/product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  @JsonKey(name: 'products')
  final List<ProductModel>? products;
  @JsonKey(name: 'total')
  final int? total;
  @JsonKey(name: 'skip')
  final int? skip;
  @JsonKey(name: 'limit')
  final int? limit;

  ProductResponse({this.products, this.total, this.skip, this.limit});
  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);
}
