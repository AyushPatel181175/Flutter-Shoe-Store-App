import 'package:flutter/material.dart';
import '../models/product.dart';
import '../main.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;
  final List<Product> cart;

  ProductDetailScreen({required this.product, required this.cart});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int? selectedSize;
  bool isInWishlist = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
        actions: [
          IconButton(
            icon: Icon(
              isInWishlist ? Icons.favorite : Icons.favorite_border,
              color: isInWishlist ? Colors.red : null,
            ),
            onPressed: () {
              setState(() {
                isInWishlist = !isInWishlist;
                if (isInWishlist) {
                  MyApp.wishlist.add(widget.product);
                } else {
                  MyApp.wishlist.remove(widget.product);
                }
              });
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                widget.product.imageUrl,
                height: 220,
                errorBuilder: (context, error, stackTrace) =>
                    Icon(Icons.image_not_supported, size: 100),
              ),
            ),
            SizedBox(height: 20),
            Text(widget.product.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('C\$${widget.product.price}',
                style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
            SizedBox(height: 20),
            Text('Select Size', style: TextStyle(fontSize: 18)),
            Wrap(
              spacing: 10,
              children: widget.product.sizes.map((size) {
                return ChoiceChip(
                  label: Text('$size'),
                  selected: selectedSize == size,
                  onSelected: (_) {
                    setState(() => selectedSize = size);
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: selectedSize == null
                  ? null
                  : () {
                widget.cart.add(widget.product);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Added to cart")),
                );
                Navigator.pop(context);
              },
              child: Text('Add to Bag'),
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
            )
          ],
        ),
      ),
    );
  }
}
