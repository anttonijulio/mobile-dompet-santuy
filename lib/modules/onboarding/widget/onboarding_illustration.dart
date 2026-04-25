import 'package:flutter/material.dart';
import '../../../core/app_color.dart';

class OnboardingIllustration extends StatelessWidget {
  const OnboardingIllustration({
    super.key,
    required this.largeBlobColor,
    required this.smallBlobColor,
    required this.icon,
    required this.iconColor,
  });

  final Color largeBlobColor;
  final Color smallBlobColor;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final w = constraints.maxWidth;
        final h = w * 0.70;
        final largeBlobW = w * 0.46;
        final largeBlobH = w * 0.48;
        final smallBlobW = w * 0.25;
        final smallBlobH = w * 0.30;

        return SizedBox(
          width: w,
          height: h,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Large organic blob — upper center-right area
              Positioned(
                left: w * 0.22,
                top: 16,
                child: Container(
                  width: largeBlobW,
                  height: largeBlobH,
                  decoration: BoxDecoration(
                    color: largeBlobColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(largeBlobH * 0.52),
                      topRight: Radius.circular(largeBlobH * 0.48),
                      bottomLeft: Radius.circular(largeBlobH * 0.47),
                      bottomRight: Radius.circular(largeBlobH * 0.53),
                    ),
                  ),
                ),
              ),
              // Small organic blob — lower right, overlapping large blob
              Positioned(
                left: w * 0.55,
                bottom: 16,
                child: Container(
                  width: smallBlobW,
                  height: smallBlobH,
                  decoration: BoxDecoration(
                    color: smallBlobColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(smallBlobH * 0.50),
                      topRight: Radius.circular(smallBlobH * 0.46),
                      bottomLeft: Radius.circular(smallBlobH * 0.48),
                      bottomRight: Radius.circular(smallBlobH * 0.52),
                    ),
                  ),
                ),
              ),
              // Icon card — upper left, overlapping left edge of large blob
              Positioned(
                left: 36,
                top: 48,
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: AppColors.iconCardBackground,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        // ignore: deprecated_member_use
                        color: Colors.black.withOpacity(0.07),
                        blurRadius: 20,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Icon(icon, color: iconColor, size: 28),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
