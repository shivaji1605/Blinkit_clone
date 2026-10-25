import 'package:blinkit_clone/domain/constants/cart_store.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = CartStore.instance;

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: AnimatedBuilder(
          animation: cart,
          builder: (context, _) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(18, 18, 18, 20),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF7CB45),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(18),
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Cart',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text('Your everyday essentials, delivered fast'),
                    ],
                  ),
                ),
                if (cart.isEmpty)
                  const Expanded(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(28),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.shopping_cart_outlined,
                                size: 76, color: Colors.black26),
                            SizedBox(height: 16),
                            Text(
                              'Your cart is empty',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Add products from the Home screen and they will appear here.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                else ...[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                    child: Row(
                      children: [
                        Text(
                          '${cart.itemCount} item(s)',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: cart.clear,
                          child: const Text('Clear cart'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: cart.items.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        final item = cart.items[index];
                        return Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/image/${item.image}',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.contain,
                                  errorBuilder: (_, __, ___) => const SizedBox(
                                    width: 70,
                                    height: 70,
                                    child: Icon(Icons.shopping_bag_outlined),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      '₹${item.price}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () => cart.removeProduct(item.name),
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        minimumSize: const Size(0, 28),
                                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      child: const Text('Remove'),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  _QuantityButton(
                                    icon: Icons.remove,
                                    onPressed: () => cart.decreaseQuantity(item.name),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Text(
                                      '${item.quantity}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  _QuantityButton(
                                    icon: Icons.add,
                                    onPressed: () => cart.addProduct(
                                      name: item.name,
                                      image: item.image,
                                      price: item.price,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(18, 16, 18, 18),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text('Subtotal', style: TextStyle(fontSize: 16)),
                            const Spacer(),
                            Text(
                              '₹${cart.total}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Checkout is a UI demo; payment is not connected yet.',
                                  ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF27AF34),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text('Proceed to checkout · ₹${cart.total}'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  const _QuantityButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: IconButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        iconSize: 18,
        style: IconButton.styleFrom(
          backgroundColor: const Color(0xFFE8F6E9),
          foregroundColor: const Color(0xFF16852A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        icon: Icon(icon),
      ),
    );
  }
}
