class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite; // Not final because it can
  //changed depending on the user preference

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imageUrl,
      this.isFavorite = false});
}
