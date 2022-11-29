class Item {
  String name;
  double price;
  String imageUrl;
  int qty;
  String categoryName;

  Item(
      {required this.name, required this.imageUrl, required this.price, this.qty = 0, this.categoryName = "All Offer"});
}
