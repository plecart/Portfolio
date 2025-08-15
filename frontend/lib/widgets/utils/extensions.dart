import 'package:flutter/material.dart';

/// Extensions utiles pour l'application

/// Extension pour les BuildContext
extension BuildContextExtension on BuildContext {
  /// Obtient la taille de l'écran
  Size get screenSize => MediaQuery.of(this).size;
  
  /// Obtient la largeur de l'écran
  double get screenWidth => MediaQuery.of(this).size.width;
  
  /// Obtient la hauteur de l'écran
  double get screenHeight => MediaQuery.of(this).size.height;
  
  /// Obtient le thème
  ThemeData get theme => Theme.of(this);
  
  /// Obtient les couleurs du thème
  ColorScheme get colors => Theme.of(this).colorScheme;
}

/// Extension pour les String
extension StringExtension on String {
  /// Capitalise la première lettre
  String get capitalize {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
  
  /// Capitalise chaque mot
  String get titleCase {
    if (isEmpty) return this;
    return split(' ').map((word) => word.capitalize).join(' ');
  }
  
  /// Supprime les espaces en début et fin
  String get trim => this.trim();
}

/// Extension pour les Widget
extension WidgetExtension on Widget {
  /// Ajoute un padding autour du widget
  Widget withPadding(EdgeInsets padding) {
    return Padding(padding: padding, child: this);
  }
  
  /// Ajoute une marge autour du widget
  Widget withMargin(EdgeInsets margin) {
    return Container(margin: margin, child: this);
  }
  
  /// Centre le widget
  Widget get centered {
    return Center(child: this);
  }
} 