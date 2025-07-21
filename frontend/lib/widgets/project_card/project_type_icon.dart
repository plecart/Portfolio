import 'package:flutter/material.dart';
import '../../models/project.dart';

class ProjectTypeIcon extends StatelessWidget {
  final ProjectType type;
  const ProjectTypeIcon({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData iconData;
    Color color;
    switch (type) {
      case ProjectType.school:
        iconData = Icons.school;
        color = Colors.blueAccent;
        break;
      case ProjectType.professional:
        iconData = Icons.work;
        color = Colors.green;
        break;
      case ProjectType.personal:
      default:
        iconData = Icons.person;
        color = Colors.purple;
        break;
    }
    return Icon(iconData, color: color, size: 24);
  }
} 