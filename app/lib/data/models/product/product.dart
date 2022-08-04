// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import '../../../core/base/base_model.dart';

part 'product.g.dart';

@JsonSerializable()
class Product implements BaseModel<Product> {
  int? id;
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  Product(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.brand,
      this.category,
      this.thumbnail,
      this.images});

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
