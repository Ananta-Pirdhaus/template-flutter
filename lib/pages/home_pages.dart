import 'package:flutter/material.dart';
import 'package:flutter_rizal/components/bottom_nav_bar.dart';
import 'package:flutter_rizal/pages/cart_page.dart';
import 'package:flutter_rizal/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Page to show it
  final List<Widget> _pages = [
    // Shop Page
    const ShopPage(), // Ganti const shopPage() dengan const ShopPage()

    // Cart Page
    const cartPage(), // Ganti const cartPage() dengan const CartPage()
  ];

  // control bottom bar
  int _selected = 0;

  // update select index
  void navigateBottomBar(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Logo
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/nike.png',
                    color: Colors.white,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                // Other Page

                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const Padding(
                  padding: const EdgeInsets.only(left: 25.0, bottom: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ), // Pindah drawer ke sini
      body: _pages[_selected],
    );
  }
}
