import 'package:flutter/material.dart';

class FavIcon extends StatelessWidget {
  final String iconUrl;
  const FavIcon({Key? key, required this.iconUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 20,
      child: ClipOval(
        child: Image.network(
          iconUrl,
          width: 32,
          height: 32,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, color: Colors.grey),
        ),
      ),
    );
  }
} 