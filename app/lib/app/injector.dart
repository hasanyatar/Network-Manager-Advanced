import 'package:app/app/core/network/network_manager/network_manager.dart';
import 'package:app/app/data/datasource/product/product_data_source.dart';
import 'package:app/app/data/repository/products/products_repository_impl.dart';
import 'package:app/app/domain/repository/products_repository.dart';
import 'package:app/app/domain/usecase/products_usecase.dart';
import 'package:get_it/get_it.dart';

import 'presentation/bloc/products_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  //* Register Products
  injector.registerSingleton<ProductDataSource>(ProductDataSource(NetworkManager.instance.service));
  injector.registerSingleton<ProductRepository>(
      ProductRepositoryImpl(injector.get<ProductDataSource>()));
  injector.registerSingleton<ProductUseCase>(ProductUseCase(injector.get<ProductRepository>()));

  //* Products Bloc
  injector.registerFactory<ProductsBloc>(() => ProductsBloc(injector.get<ProductUseCase>()));
}
