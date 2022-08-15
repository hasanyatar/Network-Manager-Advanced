// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      mId: json['id'] as int?,
      mTitle: json['title'] as String?,
      mDescription: json['description'] as String?,
      mPrice: json['price'] as int?,
      mDiscountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
      mRating: (json['rating'] as num?)?.toDouble(),
      mStock: json['stock'] as int?,
      mBrand: json['brand'] as String?,
      mCategory: json['category'] as String?,
      mThumbnail: json['thumbnail'] as String?,
      mImages:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'title': instance.mTitle,
      'description': instance.mDescription,
      'price': instance.mPrice,
      'discountPercentage': instance.mDiscountPercentage,
      'rating': instance.mRating,
      'stock': instance.mStock,
      'brand': instance.mBrand,
      'category': instance.mCategory,
      'thumbnail': instance.mThumbnail,
      'images': instance.mImages,
    };
