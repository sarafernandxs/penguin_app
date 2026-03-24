// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'penguin_facts_screen.dart';
import 'penguin_species_screen.dart';
import 'penguin_gallery_screen.dart';
import 'penguin_quiz_screen.dart';
import 'penguin_habitat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menu = [
      {'title': 'Curiosidades', 'screen': const PenguinFactsScreen(), 'icon': Icons.info},
      {'title': 'Espécies', 'screen': const PenguinSpeciesScreen(), 'icon': Icons.pets},
      {'title': 'Galeria', 'screen': const PenguinGalleryScreen(), 'icon': Icons.image},
      {'title': 'Quiz', 'screen': const PenguinQuizScreen(), 'icon': Icons.quiz},
      {'title': 'Habitat', 'screen': const PenguinHabitatScreen(), 'icon': Icons.public},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Penguin App 🐧'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🐧 IMAGEM
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/penguinTela1.jpg',
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            // 📌 SOBRE
            const Text(
              'Sobre o App',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Este aplicativo foi desenvolvido para apresentar '
              'informações e funcionalidades sobre pinguins.\n\n'
              '👩‍💻 Desenvolvido por: Sara Fernandes\n'
              '📚 Disciplina: Programação Mobile 2\n'
              '🏫 Faculdade: Universidade de Ribeirão Preto (UNAERP)\n'
              '👨‍🏫 Professor: Rodrigo de Oliveira Plotz \n'
              '📱 Versão: 1.0.0',
            ),

            const SizedBox(height: 25),

            // 📌 MENU
            const Text(
              'Funcionalidades',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menu.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: ListTile(
                    leading: Icon(menu[index]['icon']),
                    title: Text(menu[index]['title']),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => menu[index]['screen'],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}