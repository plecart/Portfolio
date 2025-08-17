import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: const ColorFilter.matrix([
              1.5, 0.0, 0.0, 0.0, 0.0,
              0.0, 2.0, 0.0, 0.0, 0.0,
              0.0, 0.0, 2.0, 0.0, 0.0,
              0.0, 0.0, 0.0, 1.0, 0.0,
            ]),
            child: Image.asset(
              'assets/images/top_backgroud.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          // Gradient pour transition smooth
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    const Color(0xFF0A0A0A).withOpacity(0.3),
                    const Color(0xFF0A0A0A).withOpacity(0.7),
                    const Color(0xFF0A0A0A),
                  ],
                  stops: const [0.0, 0.3, 0.7, 1.0],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

