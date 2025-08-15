import 'package:flutter/material.dart';
import '../utils/constants.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: AppDimensions.extraLargePadding,
        horizontal: AppDimensions.largePadding,
      ),
      child: const Text(
        'PACOME BERNIER',
        style: TextStyle(
          fontFamily: AppTypography.fontFamily,
          fontWeight: AppTypography.titleFontWeight,
          fontSize: AppTypography.titleFontSize,
          height: AppTypography.titleLineHeight / AppTypography.titleFontSize,
          letterSpacing: 0,
          color: AppColors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
} 