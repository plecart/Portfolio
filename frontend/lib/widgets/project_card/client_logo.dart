import 'package:flutter/material.dart';

class ProjectCardClientLogo extends StatelessWidget {
  const ProjectCardClientLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(100),
      ),
      child: const Icon(Icons.image, size: 16, color: Colors.white54),
    );
  }
}