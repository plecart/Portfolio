import 'package:flutter/material.dart';
import 'header.dart';
import 'content.dart';
import 'footer.dart';
import '../utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: const Column(
        children: [
          // Header avec le titre
          Header(),
          
          // Contenu principal avec la grille des projets
          Expanded(
            child: Content(),
          ),
          
          // Footer
          Footer(),
        ],
      ),
    );
  }
} 