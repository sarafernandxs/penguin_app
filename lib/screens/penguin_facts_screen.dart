// lib/screens/penguin_facts_screen.dart
import 'package:flutter/material.dart';

class PenguinFactsScreen extends StatelessWidget {
  const PenguinFactsScreen({Key? key}) : super(key: key);

  final List<String> facts = const [
    'Pinguins não voam.',
    'São excelentes nadadores.',
    'Vivem no hemisfério sul.',
    'O maior é o pinguim-imperador.',
    'Podem mergulhar por vários minutos.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Curiosidades')),
      body: ListView.builder(
        itemCount: facts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.info),
            title: Text(facts[index]),
          );
        },
      ),
    );
  }
}