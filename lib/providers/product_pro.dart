import 'package:flutter/material.dart';
import '../models/product.dart';

//Add a mixin (Chnage Notifier is the mixin)
class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Blackathonic Fleece Pullover',
      description:
          'Rock a classic pullover silhouette with ribbed crew neck, long sleeve cuffs, and a flat hem. ',
      price: 29.99,
      imageUrl:
          'https://d2j6dbq0eux0bg.cloudfront.net/images/71154059/2898099648.jpg',
    ),
    Product(
        id: 'p2',
        title: 'Blackathonic Premium Tee',
        description:
            'Elevate your outfit with the men\'s premium heavyweight tee. ',
        price: 59.99,
        imageUrl:
            'https://d2j6dbq0eux0bg.cloudfront.net/images/71154059/2898105844.jpg'),
    Product(
      id: 'p3',
      title: 'Blackathon 2022 Stainless Steel Water Bottle',
      description:
          'This 17-ounce, double-walled stainless steel water bottle is perfect for your daily outings..',
      price: 19.99,
      imageUrl:
          'https://d2j6dbq0eux0bg.cloudfront.net/images/71154059/2898126333.jpg',
    ),
    Product(
        id: 'p4',
        title: 'Blackathonic Hat',
        description:
            'Dad hats aren\'t just for dads. This one\'s got a low profile with an adjustable strap and curved visor.',
        price: 29.99,
        imageUrl:
            'https://d2j6dbq0eux0bg.cloudfront.net/images/71154059/2898118848.jpg'),
    Product(
        id: 'p5',
        title: 'Blackathonic Beanie',
        description: 'Expand your wardrobe with a classic embroidered beanie. ',
        price: 29.99,
        imageUrl:
            'https://d2j6dbq0eux0bg.cloudfront.net/images/71154059/2898132294.jpg'),
    Product(
        id: 'p6',
        title: 'Blackathon Enamel Mug',
        description: 'Every happy camper needs a unique camper mug. ',
        price: 29.99,
        imageUrl:
            'https://d2j6dbq0eux0bg.cloudfront.net/images/71154059/2898105869.jpg'),
    Product(
        id: 'p7',
        title: 'AfroHacker Unisex Hoodie',
        description:
            'Everyone needs a cozy go-to hoodie to curl up in, so go for one that\'s soft, smooth, and stylish. It\'s the perfect choice for cooler evenings! ',
        price: 29.99,
        imageUrl:
            'https://d2j6dbq0eux0bg.cloudfront.net/images/71154059/2898126114.jpg')
  ];

  List<Product> get items {
    return [..._items];
  }

  // void addProduct(){
  //   _items.add(value)
  // }
}
