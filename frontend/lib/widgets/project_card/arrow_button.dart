import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProjectCardArrowButton extends StatelessWidget {
  const ProjectCardArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            begin: Alignment(-1.0, 0.0),
            end: Alignment(1.0, 0.0),
            colors: [
              Color(0x00FFFFFF), // rgba(255, 255, 255, 0)
              Color(0x30FFFFFF), // rgba(255, 255, 255, 0.19)
              Color(0x00FFFFFF), // rgba(255, 255, 255, 0)
            ],
            stops: [0.0, 0.55, 1.0],
          ).createShader(bounds);
        },
        blendMode: BlendMode.srcATop,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0x800A0A0A), // #0A0A0A80
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: const Icon(
            Icons.arrow_forward,
            size: 12,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}