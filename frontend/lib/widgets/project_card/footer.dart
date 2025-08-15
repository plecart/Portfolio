import 'package:flutter/material.dart';
import '../../models/project.dart';
import '../../models/technology.dart';
import '../utils/technology_logo.dart';

class ProjectCardFooter extends StatelessWidget {
  final Project project;

  const ProjectCardFooter({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8, // Espacement horizontal entre les éléments
      runSpacing: 8, // Espacement vertical entre les lignes
      children: [
        if (project.technologies.isNotEmpty)
          ...project.technologies.map((tech) => TechnologyLogo(technology: tech))
       
      ],
    );
  }
}
