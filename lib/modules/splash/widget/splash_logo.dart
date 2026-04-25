import 'package:dompet_santuy/core/app_color.dart';
import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 108,
      height: 108,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Icon card
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.iconCardBackground,
              borderRadius: BorderRadius.circular(28),
            ),
            child: const Icon(
              Icons.account_balance_wallet_outlined,
              color: AppColors.iconGreen,
              size: 44,
            ),
          ),
          // Yellow badge (plain, no icon)
          Positioned(
            top: -2,
            right: -2,
            child: Container(
              width: 26,
              height: 26,
              decoration: const BoxDecoration(
                color: AppColors.blobYellow,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
