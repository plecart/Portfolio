import 'package:flutter/material.dart';

class ProjectCardPlateform extends StatelessWidget {
  final String plateform;
  const ProjectCardPlateform({super.key, required this.plateform});

  static const TextStyle _textStyle = TextStyle(
    color: Color(0xE5FFFFFF), // #FFFFFFE5
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter Tight',
    height: 1.0, // line-height: 100%
    letterSpacing: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      plateform,
      style: _textStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}