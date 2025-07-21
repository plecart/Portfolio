import 'package:flutter/material.dart';
import '../../models/project.dart';
import 'project_card_header.dart';
import 'footer_stack_project_card.dart';
import 'project_thumbnail.dart';
import 'project_type_icon.dart';
import 'platform_icon.dart';
import 'header_stack_project_card.dart';
import 'project_details_dialog.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showProjectDetailsDialog(context),
      child: Card(
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
                  HeaderStackProjectCard(project: project),
                  FooterStackProjectCard(project: project),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showProjectDetailsDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return ProjectDetailsDialog(project: project);
      },
    );
  }

  Widget _buildCircleIcon(Widget icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade300, width: 2),
      ),
      padding: const EdgeInsets.all(4),
      child: icon,
    );
  }
} 