import 'package:flutter/material.dart';
import 'package:vk/features/cart/cart.dart';
import 'package:vk/features/home_page/home_page.dart';
import 'package:vk/features/profile/profile_screen.dart';
import 'package:vk/ui_kit/tokens/icons/pet_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void onItemTab(int index) {
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const HomePage(),
    const MyCart(),
    const ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Image(image: PetIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(image: PetIcons.shoppingCart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(image: PetIcons.person),
            label: '',
          ),
        ],
        onTap: onItemTab,
      ),
    );
  }
}
