import 'package:flutter/material.dart';

import 'pages/products/view/products_view.dart';

Widget initializeApp() {
  WidgetsFlutterBinding.ensureInitialized();
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
