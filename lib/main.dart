import 'package:flutter/material.dart';
import 'models/product.dart';
import 'screens/login_screen.dart';
import 'screens/product_list_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/wishlist_screen.dart';
import 'screens/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static List<Product> cart = [];
  static List<Product> wishlist = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShoeStore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
      routes: {
        '/home': (context) => ProductListScreen(cart: cart),
        '/cart': (context) => CartScreen(cart: cart),
        '/wishlist': (context) => WishlistScreen(wishlist: wishlist),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
