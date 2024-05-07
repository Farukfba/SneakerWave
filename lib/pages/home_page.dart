import 'package:flutter/material.dart';
import 'package:sneakerwave/components/button_nav_bar.dart';
import 'package:sneakerwave/pages/cart_page.dart';
import 'package:sneakerwave/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this control the button nav bar of the selected index
  int selectedIndex = 0;
  //update the selected index
  // when the user tap on the button bar
  void navigateButtonBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: ButtonNavBar(
        onTabChange: (index) => navigateButtonBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) => IconButton(
          icon: const Padding(
            padding:  EdgeInsets.only(left: 12),
            child: Icon(Icons.menu),
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey.shade700,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/new-balance-logo.png',
                  ),
                ),

                //other pages
                const Padding(
                  padding:  EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.black,),
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                const Padding(
                  padding:  EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.black,),
                    title: Text(
                      "About",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),

            const Padding(
              padding:  EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.black,),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[selectedIndex],
    );
  }
}
