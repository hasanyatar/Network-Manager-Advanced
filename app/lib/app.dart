import 'package:app/app/injector.dart';
import 'package:flutter/material.dart';
import 'app/presentation/src/products_view.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDepedencies();
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
