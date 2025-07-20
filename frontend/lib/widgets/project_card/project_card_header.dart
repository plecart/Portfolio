import 'package:flutter/material.dart';
import '../../models/project.dart';

class ProjectCardHeader extends StatelessWidget {
  final Project project;
  const ProjectCardHeader({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Expanded(
              child: Text(
                project.projectType == ProjectType.professional && project.client != null && project.client!.isNotEmpty
                    ? '${project.title} - ${project.client}'
                    : project.title,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 32),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 