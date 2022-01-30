import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product_pro.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // ProductDetailScreen(this.title);

  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final data = Provider.of<Products>(context).items;

    return Scaffold(
      appBar: AppBar(
        title:
            Text(data.firstWhere((element) => element.id == productId).title),
      ),
    );
  }
}
