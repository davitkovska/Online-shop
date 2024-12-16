import 'package:flutter/material.dart';

class ProductCardData extends StatelessWidget {
  final String image;
  final String name;
  final int price;

  const ProductCardData({
    super.key,
    required this.name,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.network(
            image,
            cacheWidth: 100,
            fit: BoxFit.contain,
            alignment: Alignment.bottomRight,
            errorBuilder: (context, error, stackTrace) => const Icon(
              Icons.broken_image,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 5,
          height: 30,
        ),
        Text(
          "${name[0].toUpperCase()}${name.substring(1)}", // Capitalize the name
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8), // Add spacing
        Text(
          "\$${price.toString()}", // Display the price
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}