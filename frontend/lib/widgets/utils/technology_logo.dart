import 'package:flutter/material.dart';
import 'dart:ui';
import '../../models/technology.dart';

class TechnologyLogo extends StatelessWidget {
  final Technology technology;
  final double width;
  final double height;
  final double gap;
  final double angle;
  final double opacity;
  final double borderRadius;
  final double borderWidth;
  final EdgeInsets padding;

  const TechnologyLogo({
    super.key,
    required this.technology,
    this.width = 36,
    this.height = 36,
    this.gap = 10,
    this.angle = 0,
    this.opacity = 1,
    this.borderRadius = 40,
    this.borderWidth = 1,
    this.padding = const EdgeInsets.fromLTRB(2, 2, 2, 2),
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * 3.14159 / 180, // Conversion degrés en radians
      child: Tooltip(
        message: technology.name,
        child: Container(
          width: width,
          height: height,
          margin: EdgeInsets.all(gap / 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              width: borderWidth,
              color: const Color(0x30FFFFFF),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0x0A0A0A80), // #0A0A0A80
              borderRadius: BorderRadius.circular(borderRadius - borderWidth),
            ),
            padding: padding,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius - borderWidth),
              child: Center(
                child: technology.icon.isNotEmpty
                    ? Image.network(
                        technology.icon,
                        width: (width - padding.horizontal) * 0.9, // 90% de la taille disponible
                        height: (height - padding.vertical) * 0.9, // 90% de la taille disponible
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.code,
                            size: (width + height) / 4,
                            color: Colors.white70,
                          );
                        },
                      )
                    : Icon(
                        Icons.code,
                        size: (width + height) / 4,
                        color: Colors.white70,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
