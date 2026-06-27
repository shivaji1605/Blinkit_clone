import 'package:blinkit_clone/reposetory/screens/cart/cartscreen.dart';
import 'package:blinkit_clone/reposetory/screens/category/categoryscreen.dart';
import 'package:blinkit_clone/reposetory/screens/home/homescreen.dart';
import 'package:blinkit_clone/reposetory/screens/print/printscreen.dart';
import 'package:blinkit_clone/reposetory/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});
  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int selectedIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    Cartscreen(),
    CategoryScreen(),
    Printscreen(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          }
         );
        },
        items: [
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: 'home 1.png'),
            label: "Home",
            ),
            BottomNavigationBarItem(
              icon: UiHelper.customImage(img: 'shopping-bag 1.png'),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: UiHelper.customImage(img: 'category 1.png'),
              label: "Category",
            ),
            BottomNavigationBarItem(
              icon: UiHelper.customImage(img: 'printer 1.png'),
              label: "Print",
            ),
            
        ],
      ),
      
    );
  }
}