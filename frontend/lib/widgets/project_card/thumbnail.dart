import 'package:flutter/material.dart';

class ProjectCardThumbnail extends StatelessWidget {
  final String thumbnailUrl;
  
  const ProjectCardThumbnail({super.key, required this.thumbnailUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: AspectRatio(
        aspectRatio: 16 / 9, // Ratio 16:9 pour garder les proportions
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(thumbnailUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
} 