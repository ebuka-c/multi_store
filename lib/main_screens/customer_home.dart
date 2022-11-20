import 'package:flutter/material.dart';
import 'package:multi_store/main_screens/cart.dart';
import 'package:multi_store/main_screens/category.dart';
import 'package:multi_store/main_screens/home.dart';
import 'package:multi_store/main_screens/profile.dart';
import 'package:multi_store/main_screens/stores.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _tabs = const [
    HomeScreen(),
    Category(),
    StoresScreen(),
    CartScreen(),
    ProfileScreen(),
    Center(child: Text('profile screen')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color.fromARGB(255, 145, 143, 143),
        currentIndex: _selectedIndex,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Stores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
