import 'dart:developer';

import 'package:app/app/core/init/network_manager/network_manager.dart';
import 'package:app/app/models/product.dart';
import 'package:app/flavors/build_config.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  void initState() {
    getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(BuildConfig.instance.config.appName),
      ),
      body: Center(
          child: Text(
        BuildConfig.instance.config.baseUrl,
        style: TextStyle(fontSize: 24),
      )),
    );
  }

  Future<List<Product>> getProducts() async {
    var responseData = await NetworkManager.instance.service.get('/productss');

    return [];
  }
}
