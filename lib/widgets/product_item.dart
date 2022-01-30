import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String id;
  final String title;

  ProductItem({required this.imageUrl, required this.id, required this.title});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ProductDetailScreen.routeName, arguments: id);
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: IconButton(
            iconSize: 20,
            onPressed: () {},
            icon: Icon(Icons.favorite),
            color: Theme.of(context).accentColor,
          ),
          backgroundColor: Colors.black87,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
              iconSize: 20,
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              color: Theme.of(context).accentColor),
        ),
      ),
    );
  }
}
