// lib/screens/penguin_species_screen.dart
import 'package:flutter/material.dart';

class PenguinSpeciesScreen extends StatelessWidget {
  const PenguinSpeciesScreen({Key? key}) : super(key: key);

  final List<String> species = const [
    'Pinguim-imperador',
    'Pinguim-rei',
    'Pinguim-de-adélia',
    'Pinguim-de-barbicha',
    'Pinguim-de-magalhães',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Espécies')),
      body: ListView.builder(
        itemCount: species.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.pets),
            title: Text(species[index]),
          );
        },
      ),
    );
  }
}