// lib/screens/penguin_gallery_screen.dart
import 'package:flutter/material.dart';

class PenguinGalleryScreen extends StatelessWidget {
  const PenguinGalleryScreen({Key? key}) : super(key: key);

  final List<String> images = const [
    'assets/images/penguin5.jpg',
    'assets/images/penguin2.jpeg',
    'assets/images/penguin3.jpg',
    'assets/images/penguin4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Galeria de Pinguins')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}