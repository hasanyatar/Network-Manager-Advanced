// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/product/product.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends Product {
  @JsonKey(name: 'id')
  final int? mId;
  @JsonKey(name: 'title')
  final String? mTitle;
  @JsonKey(name: 'description')
  final String? mDescription;
  @JsonKey(name: 'price')
  final int? mPrice;
  @JsonKey(name: 'discountPercentage')
  final double? mDiscountPercentage;
  @JsonKey(name: 'rating')
  final double? mRating;
  @JsonKey(name: 'stock')
  final int? mStock;
  @JsonKey(name: 'brand')
  final String? mBrand;
  @JsonKey(name: 'category')
  final String? mCategory;
  @JsonKey(name: 'thumbnail')
  final String? mThumbnail;
  @JsonKey(name: 'images')
  final List<String>? mImages;

  const ProductModel(
      {this.mId,
      this.mTitle,
      this.mDescription,
      this.mPrice,
      this.mDiscountPercentage,
      this.mRating,
      this.mStock,
      this.mBrand,
      this.mCategory,
      this.mThumbnail,
      this.mImages})
      : super(
          id: mId,
          title: mTitle,
          description: mDescription,
          price: mPrice,
          discountPercentage: mDiscountPercentage,
          rating: mRating,
          stock: mStock,
          brand: mBrand,
          category: mCategory,
          thumbnail: mThumbnail,
          images: mImages,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
