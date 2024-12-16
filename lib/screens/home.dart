import 'package:online_shop/models/product_model.dart';
import 'package:online_shop/widgets/grid.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Product> product = [
    Product(
      id: 1,
      name: "Insulated Winter Jacket",
      image: "https://i.pinimg.com/736x/9d/7b/f4/9d7bf4fb7ddfa285ff36fbb7630f4b05.jpg",
      description: "Warm and stylish, made with polyester filling for insulation. Water-resistant outer layer. Similar styles: Parkas, hooded coats.",
      price: 7999,
    ),
    Product(
      id: 2,
      name: "Denim Jeans",
      image: "https://i.pinimg.com/736x/32/90/c2/3290c2382d19272ea2c7f89c157b3486.jpg",
      description: "Classic fit denim jeans with stretch for comfort. Perfect for casual outings. Similar styles: skinny jeans, straight-cut.",
      price: 1200,
    ),
    Product(
      id: 3,
      name: "Leather Wallet",
      image: "https://i.pinimg.com/736x/13/d5/85/13d58581f0a543b4c9171e128a8349f8.jpg",
      description: "Premium leather wallet with multiple compartments. Perfect for organizing your essentials. Similar styles: cardholders, minimalist wallets.",
      price: 800,
    ),
    Product(
      id: 4,
      name: "Running Shoes",
      image: "https://i.pinimg.com/736x/6f/4b/f7/6f4bf7e2b7a68cfabfd659a1f20c5a5e.jpg",
      description: "Lightweight running shoes with breathable mesh. Perfect for sports or daily wear. Similar styles: training shoes, sneakers.",
      price: 1500,
    ),
    Product(
      id: 5,
      name: "Smartwatch",
      image: "https://i.pinimg.com/736x/0a/34/5c/0a345c1447f1b6b7e889b3767c54b0f0.jpg",
      description: "Stylish smartwatch with fitness tracking and notifications. Perfect for tech-savvy individuals. Similar styles: fitness bands, analog-digital watches.",
      price: 3500,
    ),
    Product(
      id: 6,
      name: "Backpack",
      image: "https://i.pinimg.com/736x/45/d4/56/45d456f6d6d6f6b12a4a546d623456ed.jpg",
      description: "Durable backpack with multiple compartments for organization. Perfect for travel or school. Similar styles: sling bags, messenger bags.",
      price: 1200,
    ),
    Product(
      id: 7,
      name: "Sunglasses",
      image: "https://i.pinimg.com/736x/1d/9a/34/1d9a349df8eeb3b46904d6d2e5f0eb61.jpg",
      description: "UV-protected sunglasses with a stylish frame. Perfect for outdoor activities. Similar styles: aviators, wayfarers.",
      price: 900,
    ),
    Product(
      id: 8,
      name: "Hoodie",
      image: "https://i.pinimg.com/736x/c5/7d/ef/c57defd1234561f879e1e4567c42356d.jpg",
      description: "Comfortable hoodie with soft fleece lining. Perfect for chilly weather. Similar styles: zip-up hoodies, sweatshirts.",
      price: 1800,
    ),
    Product(
      id: 9,
      name: "Travel Mug",
      image: "https://i.pinimg.com/736x/7d/7c/f3/7d7cf3f873fbf45634f23c8b123ed7f3.jpg",
      description: "Insulated travel mug to keep drinks hot or cold. Perfect for commutes. Similar styles: thermos flasks, tumblers.",
      price: 600,
    ),
    Product(
      id: 10,
      name: "Wireless Earbuds",
      image: "https://i.pinimg.com/736x/3e/9d/b5/3e9db5f7f456def8a9c1234575c34b56.jpg",
      description: "Compact wireless earbuds with noise cancellation. Perfect for music lovers. Similar styles: over-ear headphones, wired earphones.",
      price: 2200,
    ),

  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white, size: 24),
        ),
        title: const Text(
          "211020",
          style: TextStyle(color: Colors.black, fontSize: 38, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.white, size: 24),
          ),
        ],
      ),
      body: ProductGrid(product: product),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}