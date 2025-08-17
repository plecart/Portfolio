import 'package:flutter/material.dart';
import '../utils/constants.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppDimensions.extraLargePadding,
      ),
      child: Column(
        children: [
          // "Portfolio de" text
          const Text(
            'Portfolio de',
            style: TextStyle(
              fontFamily: 'Inter Tight',
              fontWeight: FontWeight.w300,
              fontSize: 20,
              height: 1.0,
              letterSpacing: 0,
              color: Color(0xCCFFFFFF), // #FFFFFFCC with 80% opacity
            ),
            textAlign: TextAlign.center,
          ),
          // 40px spacing
          const SizedBox(height: 40),
          // Main header
          const Text(
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
        ],
      ),
    );
  }
} 