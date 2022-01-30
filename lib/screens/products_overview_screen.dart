import 'package:flutter/material.dart';
import 'package:shop_app/widgets/products_grid.dart';
import '../providers/product_pro.dart';

class ProductsOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blackathon Shop'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(),
        ),
      ),
      body: ProductsGrid(),
    );
  }
}
