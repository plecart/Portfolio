import 'package:flutter/material.dart';
import '../utils/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: AppDimensions.largePadding,
        horizontal: AppDimensions.largePadding,
      ),
      child: const Column(
        children: [
          Divider(
            color: AppColors.white24,
            thickness: 1,
          ),
          SizedBox(height: AppDimensions.largePadding),
          Text(
            '© 2024 Mon Portfolio. Tous droits réservés.',
            style: TextStyle(
              color: AppColors.white54,
              fontSize: AppTypography.footerFontSize,
              fontFamily: AppTypography.fontFamily,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
} 