import 'package:flutter/material.dart';
import '../../models/project.dart';
import 'project_card_header.dart';
import 'footer_stack_project_card.dart';
import 'project_thumbnail.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF303046),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFF212146), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProjectCardHeader(project: project),
          Expanded(
            child: Stack(
              children: [
                ProjectThumbnail(imageUrl: project.thumbnail),
                FooterStackProjectCard(project: project),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 