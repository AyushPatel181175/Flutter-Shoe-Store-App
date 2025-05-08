import 'package:flutter/material.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/149/149071.png',
              ),
            ),
            SizedBox(height: 20),
            Text("Ayush Patel", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("ayush.patel@email.com", style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 40),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("My Orders"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text("Wishlist"),
              onTap: () => Navigator.pushNamed(context, '/wishlist'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                      (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
