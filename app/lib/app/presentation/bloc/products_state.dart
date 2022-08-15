part of 'products_bloc.dart';

abstract class ProductsState extends Equatable {
  const ProductsState({
    this.products = const [],
    this.error,
  });
  final List<Product> products;
  final DioError? error;
  @override
  List<dynamic> get props => [
        products,
        error,
      ];
}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {
  const ProductsLoaded(List<Product> products) : super(products: products);
}

class ProductsError extends ProductsState {
  const ProductsError(DioError error) : super(error: error);
}
