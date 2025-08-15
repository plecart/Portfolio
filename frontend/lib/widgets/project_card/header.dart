import 'package:flutter/material.dart';
import '../../models/project.dart';
import 'client_logo.dart';
import 'title.dart';
import 'plateform.dart';
import 'arrow_button.dart';
import 'date.dart';

class ProjectCardHeader extends StatelessWidget {
  final Project project;
  const ProjectCardHeader({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProjectCardClientLogo(),
        const SizedBox(width: 14),
        // Colonne avec titre et plateforme
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectCardTitle(title: project.title),
              const SizedBox(height: 10),
              ProjectCardPlateform(plateform: project.platform),
            ],
          ),
        ),
        // Nouvelle colonne à droite
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const ProjectCardArrowButton(),
            const SizedBox(height: 10),
            const ProjectCardDateWidget(),
          ],
        ),
      ],
    );
  }
}