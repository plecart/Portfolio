import 'package:flutter/material.dart';
import '../../models/project.dart';

class ProjectDetailsDialog extends StatelessWidget {
  final Project project;
  const ProjectDetailsDialog({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.height * 0.1,
      ),
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: BoxDecoration(
          color: const Color(0xFF303046),
          borderRadius: BorderRadius.circular(16),
        ),
        child: _ProjectDetailsContent(project: project),
      ),
    );
  }
}

class _ProjectDetailsContent extends StatelessWidget {
  final Project project;
  const _ProjectDetailsContent({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(project.title, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 16),
          Text(project.projectDescription, style: const TextStyle(fontSize: 18, color: Colors.white70)),
          // Ajoute ici d'autres infos du projet si besoin
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Fermer', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
} 