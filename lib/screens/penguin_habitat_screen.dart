// lib/screens/penguin_habitat_screen.dart
import 'package:flutter/material.dart';

class PenguinHabitatScreen extends StatelessWidget {
  const PenguinHabitatScreen({Key? key}) : super(key: key);

  final List<String> habitats = const [
    'Antártida',
    'América do Sul',
    'África do Sul',
    'Nova Zelândia',
    'Austrália',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Habitat dos Pinguins')),
      body: ListView.builder(
        itemCount: habitats.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.public),
            title: Text(habitats[index]),
          );
        },
      ),
    );
  }
}