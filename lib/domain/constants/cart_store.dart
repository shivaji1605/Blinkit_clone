import 'package:flutter/foundation.dart';

@immutable
class CartItem {
  const CartItem({
    required this.name,
    required this.image,
    required this.price,
    this.quantity = 1,
  });

  final String name;
  final String image;
  final int price;
  final int quantity;

  CartItem copyWith({int? quantity}) => CartItem(
        name: name,
        image: image,
        price: price,
        quantity: quantity ?? this.quantity,
      );
}

class CartStore extends ChangeNotifier {
  CartStore._();

  static final CartStore instance = CartStore._();

  final Map<String, CartItem> _items = {};

  List<CartItem> get items => List.unmodifiable(_items.values);
  int get itemCount => _items.values.fold(0, (sum, item) => sum + item.quantity);
  int get total => _items.values.fold(0, (sum, item) => sum + item.price * item.quantity);
  bool get isEmpty => _items.isEmpty;

  void addProduct({
    required String name,
    required String image,
    required int price,
  }) {
    final existing = _items[name];
    _items[name] = existing == null
        ? CartItem(name: name, image: image, price: price)
        : existing.copyWith(quantity: existing.quantity + 1);
    notifyListeners();
  }

  void decreaseQuantity(String name) {
    final existing = _items[name];
    if (existing == null) return;
    if (existing.quantity <= 1) {
      _items.remove(name);
    } else {
      _items[name] = existing.copyWith(quantity: existing.quantity - 1);
    }
    notifyListeners();
  }

  void removeProduct(String name) {
    _items.remove(name);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
