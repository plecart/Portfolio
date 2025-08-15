import 'package:flutter/material.dart';

class ProjectCardTitle extends StatelessWidget {
  final String title;
  const ProjectCardTitle({super.key, required this.title});

  static const TextStyle _textStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter Tight',
    height: 1.0,
    letterSpacing: 0,
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final textSpan = TextSpan(
          text: title,
          style: _textStyle,
        );
        
        final textPainter = TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
          maxLines: 1,
        );
        
        textPainter.layout(maxWidth: constraints.maxWidth);
        final isTextOverflowing = textPainter.didExceedMaxLines;
        
        final textWidget = Text(
          title,
          style: _textStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        );
        
        return isTextOverflowing
            ? Tooltip(message: title, child: textWidget)
            : textWidget;
      },
    );
  }
}