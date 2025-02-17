import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adidas Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ShopScreen(),
    );
  }
}

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('SHOP', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  // Add search functionality here
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey.shade600),
                      const SizedBox(width: 12),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Tab Bar (3 TextWidgets)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('MEN', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('WOMEN', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('KIDS', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),

            // Promotional Banner
            Container(
              margin: const EdgeInsets.all(16),
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade400, Colors.pink.shade400],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/1.jpg', // Make sure you have this image in your assets
                fit: BoxFit.cover, // Important: Use BoxFit.cover to fill the container
              ),
            ),

            // Category List
            ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text('SHOES'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.checkroom),
              title: const Text('CLOTHING'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.watch),
              title: const Text('ACCESSORIES'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),

            // Bottom Icons Grid
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: GridView.builder( // Use GridView.builder for more efficient rendering
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(), // Important: Disable scrolling within GridView
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio:5///adst aspect ratio for better fit
                ),
                itemCount: 4, // Number of grid items
                itemBuilder: (BuildContext context, int index) {
                  final icons = [Icons.local_offer, Icons.directions_run, Icons.trending_up, Icons.card_giftcard];
                  final texts = ['SALE', 'SPORT', 'NEW & TRENDING', 'GIFT CARDS'];

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(icons[index], size: 32),
                      const SizedBox(height: 4),
                      Text(texts[index], style: const TextStyle(fontSize: 12)),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: Colors.black),
            label: '',
          ),
        ],
      ),
    );
  }
}