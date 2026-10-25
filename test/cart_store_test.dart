import 'package:blinkit_clone/domain/constants/cart_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    CartStore.instance.clear();
  });

  tearDown(() {
    CartStore.instance.clear();
  });

  test('adding the same product increments its quantity', () {
    final cart = CartStore.instance;

    cart.addProduct(name: 'Milk', image: 'milk.png', price: 30);
    cart.addProduct(name: 'Milk', image: 'milk.png', price: 30);

    expect(cart.itemCount, 2);
    expect(cart.items, hasLength(1));
    expect(cart.items.single.quantity, 2);
    expect(cart.total, 60);
  });

  test('decreasing the last quantity removes the product', () {
    final cart = CartStore.instance;
    cart.addProduct(name: 'Milk', image: 'milk.png', price: 30);

    cart.decreaseQuantity('Milk');

    expect(cart.isEmpty, isTrue);
    expect(cart.total, 0);
  });

  test('removing one product leaves other products in the cart', () {
    final cart = CartStore.instance;
    cart.addProduct(name: 'Milk', image: 'milk.png', price: 30);
    cart.addProduct(name: 'Bread', image: 'bread.png', price: 25);

    cart.removeProduct('Milk');

    expect(cart.items.map((item) => item.name), ['Bread']);
    expect(cart.total, 25);
  });
}
