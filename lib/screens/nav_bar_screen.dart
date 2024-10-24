import 'package:flutter/material.dart';
import 'package:provider_ecommerce/constants.dart';
import 'package:provider_ecommerce/screens/cart/cart_screen.dart';
import 'package:provider_ecommerce/screens/favorite/favorite_screen.dart';
import 'package:provider_ecommerce/screens/home/home_screen.dart';
import 'package:provider_ecommerce/screens/profile/profile.dart';
import 'package:provider_ecommerce/screens/wallet/wallet.dart';

class MyNavBarScreen extends StatefulWidget {
  const MyNavBarScreen({super.key});

  @override
  State<MyNavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<MyNavBarScreen> {
  int currentIndex = 2;
  List screens = [
    const Wallet(),
    const FavoriteScreen(),
    const HomeScreen(),
    const CartScreen(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: Icon(
                Icons.wallet_rounded,
                size: 30,
                color: currentIndex == 0 ? kPrimaryColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: currentIndex == 1 ? kPrimaryColor : Colors.grey.shade400,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: currentIndex == 3 ? kPrimaryColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              icon: Icon(
                Icons.person_outline,
                size: 30,
                color: currentIndex == 4 ? kPrimaryColor : Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
