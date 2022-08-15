import 'package:app/app/injector.dart';
import 'package:flutter/material.dart';

import 'app/presentation/src/products_view.dart';

Widget initializeApp() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDependencies();
  return const MyApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductsView(),
    );
  }
}
