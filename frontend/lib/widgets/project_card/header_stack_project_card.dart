import 'package:flutter/material.dart';
import '../../models/project.dart';
import 'project_type_icon.dart';
import 'platform_icon.dart';

class HeaderStackProjectCard extends StatelessWidget {
  final Project project;
  const HeaderStackProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      left: 8,
      child: Row(
        children: [
          _buildCircleIcon(ProjectTypeIcon(type: project.projectType)),
          const SizedBox(width: 8),
          _buildCircleIcon(PlatformIcon(platform: project.platform)),
        ],
      ),
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