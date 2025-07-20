import 'package:flutter/material.dart';
import '../../models/project.dart';
import 'favicon.dart';

class FooterStackProjectCard extends StatelessWidget {
  final Project project;
  const FooterStackProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (project.technologies.isEmpty) return const SizedBox.shrink();
    return Positioned(
      left: 8,
      bottom: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: project.technologies.map((tech) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: FavIcon(iconUrl: tech.icon),
        )).toList(),
      ),
    );
  }
} 