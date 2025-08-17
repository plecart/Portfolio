import 'package:flutter/material.dart';
import 'content.dart';
import 'footer.dart';
import 'background.dart';
import '../utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: Stack(
        children: [
          // Background avec image et gradient
          const Background(),
          
          // Contenu principal
          const Column(
            children: [
              // Contenu principal avec la grille des projets (inclut le header)
              Expanded(
                child: Content(),
              ),
              
              // Footer
              Footer(),
            ],
          ),
        ],
      ),
    );
  }
} 