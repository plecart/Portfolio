import 'package:flutter/material.dart';
import '../../models/project.dart';
import '../utils/constants.dart';
import '../project_detail/project_detail_dialog.dart';
import 'header.dart';
import 'thumbnail.dart';
import 'footer.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF171717),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0x1AFFFFFF), // #FFFFFF1A
          width: 1,
        ),
      ),
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20), // Réduit de 20px à 16px
      child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max, // Prend toute la hauteur disponible
          children: [
            ProjectCardHeader(project: project),
            ProjectCardThumbnail(thumbnailUrl: project.thumbnail),
            ProjectCardFooter(project: project),
          ],
        ),
      
    );
  }
} 