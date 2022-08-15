import 'package:app/app/injector.dart';
import 'package:app/app/presentation/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../flavors/build_config.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductsBloc>(
      create: (context) => injector<ProductsBloc>()..add(GetProducts()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(BuildConfig.instance.config.appName),
        ),
        body: BlocBuilder<ProductsBloc, ProductsState>(
          builder: (context, state) {
            if (state is ProductsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is ProductsLoaded) {
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return ListTile(
                    title: Text(product.title ?? ""),
                    subtitle: Text(product.description ?? ""),
                    trailing: Text('price: ${product.price}'),
                    leading: Image.network(product.images?.first ?? ""),
                  );
                },
              );
            } else if (state is ProductsError) {
              return Center(
                child: Text(state.error.toString()),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
