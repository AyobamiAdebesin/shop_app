import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductsOverview extends StatelessWidget {
  final List<Product> _loadedProducts = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
        id: 'p2',
        title: 'Trousers',
        description: 'A nice pair of trousers.',
        price: 59.99,
        imageUrl:
            'https://cdn.huntsmansavilerow.com/wp-content/uploads/2019/11/14194947/V09315-Green1.jpg'),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and Cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
        id: 'p4',
        title: 'Pan',
        description: 'A pan for frying.',
        price: 29.99,
        imageUrl:
            'https://m.media-amazon.com/images/I/819hzZIFNuL._AC_SL1500_.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop App'),
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
      body: ProductsGrid(loadedProducts: _loadedProducts),
    );
  }
}

