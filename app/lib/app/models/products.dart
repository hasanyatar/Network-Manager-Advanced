import 'product.dart';

// class Products {
//   List<Product>? products;

//   Products({this.products});

//   Products.fromJson(Map<String, dynamic> json) {
//     if (json['products'] != null) {
//       products = <Product>[];
//       json['products'].forEach((v) {
//         products.add( Product.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.products != null) {
//       data['products'] = this.products.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
