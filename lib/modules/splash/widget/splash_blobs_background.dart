import 'package:flutter/material.dart';

class SplashBlobsBackground extends StatelessWidget {
  const SplashBlobsBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Blob: top-right (mint teal)
        Positioned(
          top: -60,
          right: -60,
          child: Container(
            width: 220,
            height: 220,
            decoration: const BoxDecoration(
              color: Color(0x60A8D5C0),
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Blob: bottom-left (lavender)
        Positioned(
          bottom: -80,
          left: -80,
          child: Container(
            width: 240,
            height: 240,
            decoration: const BoxDecoration(
              color: Color(0x60B5A9D9),
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Blob: bottom-right (orange-brown)
        Positioned(
          bottom: 80,
          right: -60,
          child: Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              color: Color(0x60D4956A),
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Top gradient overlay (#7fd1b1 → transparent)
        const Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.38],
                colors: [
                  Color(0x407FD1B1),
                  Color(0x007FD1B1),
                ],
              ),
            ),
          ),
        ),
        // Bottom gradient overlay (#b39be6 → transparent)
        const Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.0, 0.38],
                colors: [
                  Color(0x40B39BE6),
                  Color(0x00B39BE6),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
