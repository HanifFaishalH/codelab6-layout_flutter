// models/item.dart

class Item {
  String name;
  int price;

  // Gunakan 'required' untuk best practice null-safety
  Item({required this.name, required this.price});
}