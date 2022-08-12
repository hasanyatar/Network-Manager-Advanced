import 'package:app/app/domain/usecase/products_usecase.dart';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/product/product.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductUseCase _productUseCase;
  ProductsBloc(this._productUseCase) : super(ProductsInitial()) {
    on<GetProducts>(_getProducts);
  }

  void _getProducts(GetProducts event, Emitter<ProductsState> emit) async {
    emit(ProductsLoading());
    try {
      final products = await _productUseCase.call(null);
      // products.fold((error) => emit(ProductsError(error)), (data) => emit(ProductsLoaded(data)));
      products.fold((l) => emit(ProductsError(l)), (r) => emit(ProductsLoaded(r)));
    } on DioError catch (error) {
      emit(ProductsError(error));
    }
  }
}
