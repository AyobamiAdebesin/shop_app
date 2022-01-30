import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    Key? key,
    required List<Product> loadedProducts,
  })  : _loadedProducts = loadedProducts,
        super(key: key);

  final List<Product> _loadedProducts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: _loadedProducts.length,
      itemBuilder: (ctx, index) => ProductItem(
        imageUrl: _loadedProducts[index].imageUrl,
        id: _loadedProducts[index].id,
        title: _loadedProducts[index].title,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 3 / 2,
      ),
    );
  }
}
