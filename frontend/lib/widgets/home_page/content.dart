import 'package:flutter/material.dart';
import '../../models/project.dart';
import '../../services/project_service.dart';
import '../project_card/project_card.dart';
import '../utils/constants.dart';
import '../utils/helpers.dart';
import 'header.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  late Future<List<Project>> _futureProjects;

  @override
  void initState() {
    super.initState();
    _futureProjects = ProjectService.fetchProjects();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Project>>(
      future: _futureProjects,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.white)
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text(
              'Erreur: ${snapshot.error}',
              style: const TextStyle(color: AppColors.white)
            )
          );
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(
            child: Text(
              'Aucun projet trouvé.',
              style: TextStyle(color: AppColors.white)
            )
          );
        }
        
        final projects = snapshot.data!;
        return LayoutBuilder(
          builder: (context, constraints) {
            // Calculer le nombre optimal de colonnes basé sur la largeur disponible
            final cardWidth = 400.0; // Largeur cible de chaque carte
            final spacing = AppDimensions.cardSpacing;
            final padding = AppDimensions.defaultPadding;
            final availableWidth = constraints.maxWidth - (padding * 2);
            final crossAxisCount = ((availableWidth + spacing) / (cardWidth + spacing)).floor();
            final actualCrossAxisCount = crossAxisCount.clamp(1, 4); // Entre 1 et 4 colonnes
            
            return CustomScrollView(
              slivers: [
                // Header dans le scroll
                const SliverToBoxAdapter(
                  child: Header(),
                ),
                // Grille des projets
                SliverPadding(
                  padding: const EdgeInsets.all(AppDimensions.defaultPadding),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: actualCrossAxisCount,
                      crossAxisSpacing: AppDimensions.cardSpacing,
                      mainAxisSpacing: AppDimensions.cardSpacing,
                      childAspectRatio: 1.1,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return ProjectCard(project: projects[index]);
                      },
                      childCount: projects.length,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
} 