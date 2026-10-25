import 'package:blinkit_clone/reposetory/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final TextEditingController _searchController = TextEditingController();

  static const Color _yellow = Color(0xFFF7CB45);
  static const Color _tileColor = Color(0xFFD9EBEB);

  final List<Map<String, String>> _groceryKitchen = [
    {'text': 'Vegetables &\nFruits', 'img': 'image 41.png'},
    {'text': 'Atta, Dal &\nRice', 'img': 'image 42.png'},
    {'text': 'Oil, Ghee &\nMasala', 'img': 'image 43.png'},
    {'text': 'Dairy, Bread &\nMilk', 'img': 'image 44.png'},
    {'text': 'Snacks &\nBranded Foods', 'img': 'image 45.png'},
  ];

  final List<Map<String, String>> _dryGoods = [
    {'text': 'Dry Fruits &\nCereals', 'img': 'image 21.png'},
    {'text': 'Kitchen &\nAppliances', 'img': 'image 22.png'},
    {'text': 'Tea &\nCoffee', 'img': 'image 23.png'},
    {'text': 'Ice Creams &\nDesserts', 'img': 'image 24.png'},
    {'text': 'Noodles &\nPacket Food', 'img': 'image 25.png'},
  ];

  final List<Map<String, String>> _snacks = [
    {'text': 'Chips &\nNamkeens', 'img': 'image 31.png'},
    {'text': 'Sweets &\nChocolates', 'img': 'image 32.png'},
    {'text': 'Drinks &\nJuices', 'img': 'image 33.png'},
    {'text': 'Sauces &\nSpreads', 'img': 'image 34.png'},
    {'text': 'Beauty &\nCosmetics', 'img': 'image 35.png'},
  ];

  final List<Map<String, String>> _household = [
    {'text': 'Household', 'img': 'image 36.png'},
    {'text': 'Personal Care', 'img': 'image 37.png'},
    {'text': 'Home Care', 'img': 'image 38.png'},
    {'text': 'Kitchen Needs', 'img': 'image 39.png'},
    {'text': 'More Essentials', 'img': 'image 40.png'},
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 18, bottom: 24),
                children: [
                  _buildCategorySection('Grocery & Kitchen', _groceryKitchen),
                  _buildCategorySection('Dry Fruits, Dairy & More', _dryGoods),
                  _buildCategorySection('Snacks & Drinks', _snacks),
                  _buildCategorySection('Household Essentials', _household),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 18),
      decoration: const BoxDecoration(
        color: _yellow,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Blinkit in',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '16 minutes',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Home · Choose your delivery location',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person_outline, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _searchController,
            onChanged: (_) => setState(() {}),
            decoration: InputDecoration(
              hintText: 'Search for products',
              prefixIcon: const Icon(Icons.search),
              suffixIcon: _searchController.text.isEmpty
                  ? const Icon(Icons.mic_none)
                  : IconButton(
                      tooltip: 'Clear search',
                      onPressed: () {
                        _searchController.clear();
                        setState(() {});
                      },
                      icon: const Icon(Icons.close),
                    ),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySection(
    String title,
    List<Map<String, String>> items,
  ) {
    final query = _searchController.text.trim().toLowerCase();
    final visibleItems = items
        .where((item) => item['text']!.replaceAll('\n', ' ').toLowerCase().contains(query))
        .toList();

    if (visibleItems.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 122,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: visibleItems.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final item = visibleItems[index];
                return SizedBox(
                  width: 82,
                  child: Column(
                    children: [
                      Container(
                        height: 78,
                        width: 78,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: _tileColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: UiHelper.customImage(img: item['img']!),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        item['text']!,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 10,
                          height: 1.2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
