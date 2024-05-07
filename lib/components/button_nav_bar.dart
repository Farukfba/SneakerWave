import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ButtonNavBar extends StatelessWidget {
  ButtonNavBar({super.key, required this.onTabChange});
  void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
  return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
          activeColor: Colors.blueGrey.shade900,
          tabActiveBorder: Border.all(color: Colors.blueGrey.shade400),
          tabBackgroundColor: Colors.blueGrey.shade400,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 22,
          gap: 8,
          onTabChange: (value) => onTabChange!(value),
          tabs:  const [
            GButton(
            icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: "Cart",
            ),
      ]),
      
    );
  }
}
