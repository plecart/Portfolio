/// Fonctions utilitaires pour l'application
library;

/// Calcule le nombre optimal de colonnes pour la grille des projets
/// en fonction de la largeur disponible
int calculateOptimalCrossAxisCount(double width, int initialCrossAxisCount) {
  double cardWidth = width / initialCrossAxisCount;
  while (cardWidth < 400 && initialCrossAxisCount > 1) {
    initialCrossAxisCount--;
    cardWidth = width / initialCrossAxisCount;
  }
  return initialCrossAxisCount;
}

/// Formate une date en format français
String formatDate(DateTime date) {
  const months = [
    'Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin',
    'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'
  ];
  
  return '${date.day} ${months[date.month - 1]} ${date.year}';
}

/// Tronque un texte à une longueur maximale
String truncateText(String text, int maxLength) {
  if (text.length <= maxLength) {
    return text;
  }
  return '${text.substring(0, maxLength)}...';
}

/// Vérifie si une URL est valide
bool isValidUrl(String url) {
  try {
    Uri.parse(url);
    return true;
  } catch (e) {
    return false;
  }
} 