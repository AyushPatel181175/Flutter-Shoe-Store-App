import 'package:flutter/material.dart';
import '../models/product.dart';

class WishlistScreen extends StatelessWidget {
  final List<Product> wishlist;

  WishlistScreen({required this.wishlist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Wishlist')),
      body: wishlist.isEmpty
          ? Center(child: Text("Your wishlist is empty"))
          : ListView.builder(
        itemCount: wishlist.length,
        itemBuilder: (context, index) {
          final product = wishlist[index];
          return ListTile(
            leading: Image.network(product.imageUrl, width: 50),
            title: Text(product.name),
            subtitle: Text('C\$${product.price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
