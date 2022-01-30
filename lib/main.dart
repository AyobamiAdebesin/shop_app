import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import './providers/product_pro.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        theme: ThemeData(
          accentColor: Colors.amber,
          primarySwatch: Colors.purple,
          fontFamily: 'Lato',
        ),
        home: ProductsOverview(),
        routes: {ProductDetailScreen.routeName: (ctx) => ProductDetailScreen()},
      ),
    );
  }
}
