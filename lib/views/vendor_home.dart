import 'package:ccr_multistore_app/screens/categories.dart';
import 'package:ccr_multistore_app/screens/dashboard.dart';
import 'package:ccr_multistore_app/screens/products_home.dart';
import 'package:ccr_multistore_app/screens/profile.dart';
import 'package:ccr_multistore_app/screens/search.dart';
import 'package:ccr_multistore_app/screens/stores.dart';
import 'package:ccr_multistore_app/screens/upload.dart';
import 'package:flutter/material.dart';

class VendorHomeView extends StatefulWidget {
  const VendorHomeView({Key? key}) : super(key: key);

  @override
  State<VendorHomeView> createState() => _VendorHomeViewState();
}

class _VendorHomeViewState extends State<VendorHomeView> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = const [
    ProductsHomeScreen(),
    CategoriesScreen(),
    SearchScreen(),
    StoresScreen(),
    DashboardScreen(),
    UploadScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Stores"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.upload), label: "Upload"),
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