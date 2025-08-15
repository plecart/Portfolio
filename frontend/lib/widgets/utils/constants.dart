import 'package:flutter/material.dart';

/// Constantes de couleurs utilisées dans l'application
class AppColors {
  static const Color primaryBackground = Color(0xFF0A0A0A);
  static const Color secondaryBackground = Color(0xFF212130);
  static const Color cardBackground = Color(0xFF303046);
  static const Color projectCardBackground = Color(0xFF171717);
  static const Color white = Colors.white;
  static const Color white54 = Colors.white54;
  static const Color white24 = Colors.white24;
}

/// Constantes de dimensions et espacements
class AppDimensions {
  static const double defaultPadding = 16.0;
  static const double largePadding = 20.0;
  static const double extraLargePadding = 40.0;
  static const double cardSpacing = 16.0;
  static const double cardAspectRatio = 3 / 2; // Augmenté de 16/9 à 3/2 pour plus d'espace
  static const double minCardWidth = 400.0;
  
  // Project Card specific dimensions
  static const double projectCardGap = 10.0;
  static const double projectCardBorderRadius = 8.0;
  static const double projectCardBorderWidth = 1.0;
  static const double projectCardPaddingTop = 20.0;
  static const double projectCardPaddingRight = 16.0;
  static const double projectCardPaddingBottom = 20.0;
  static const double projectCardPaddingLeft = 16.0;
}

/// Constantes de typographie
class AppTypography {
  static const String fontFamily = 'Inter Tight';
  static const double titleFontSize = 92.0;
  static const double titleLineHeight = 74.0;
  static const double footerFontSize = 14.0;
  static const FontWeight titleFontWeight = FontWeight.w800;
} 