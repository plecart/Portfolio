import 'package:flutter/material.dart';

class ProjectThumbnail extends StatelessWidget {
  final String imageUrl;
  const ProjectThumbnail({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        width: double.infinity,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, color: Colors.white),
      ),
    );
  }
} 