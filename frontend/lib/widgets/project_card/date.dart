import 'package:flutter/material.dart';

class ProjectCardDateWidget extends StatelessWidget {
  const ProjectCardDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final dateString = "${today.year.toString().padLeft(4, '0')}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}";
    
    return Text(
      dateString,
      style: const TextStyle(
        color: Color(0xE5FFFFFF), // #FFFFFFE5
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter Tight',
        height: 1.0, // line-height: 100%
        letterSpacing: 0,
      ),
    );
  }
} 