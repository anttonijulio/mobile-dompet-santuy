import 'package:flutter/material.dart';
import '../../../core/app_color.dart';
import 'onboarding_illustration.dart';

class OnboardingSlide extends StatelessWidget {
  const OnboardingSlide({super.key, required this.index});

  final int index;

  static const _slides = [
    _SlideData(
      largeBlobColor: AppColors.blobMint,
      smallBlobColor: AppColors.blobYellow,
      icon: Icons.account_balance_wallet_outlined,
      iconColor: AppColors.iconGreen,
      title: 'Atur uang tanpa ribet',
      subtitle:
          'Catat pemasukan & pengeluaran dalam hitungan detik. Gak perlu pusing.',
    ),
    _SlideData(
      largeBlobColor: AppColors.blobOrange,
      smallBlobColor: AppColors.blobLavender,
      icon: Icons.adjust,
      iconColor: AppColors.iconOrange,
      title: 'Budget yang santuy',
      subtitle: 'Set limit per kategori. Kami ingetin sebelum kamu kalap.',
    ),
    _SlideData(
      largeBlobColor: AppColors.blobLavender,
      smallBlobColor: AppColors.blobMint,
      icon: Icons.auto_awesome,
      iconColor: AppColors.iconPurple,
      title: 'Wujudin impianmu',
      subtitle:
          'Nabung untuk Bali, laptop, atau apa pun. Satu langkah kecil tiap hari.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final slide = _slides[index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 24),
          OnboardingIllustration(
            largeBlobColor: slide.largeBlobColor,
            smallBlobColor: slide.smallBlobColor,
            icon: slide.icon,
            iconColor: slide.iconColor,
          ),
          const SizedBox(height: 48),
          Text(
            slide.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                ),
          ),
          const SizedBox(height: 12),
          Text(
            slide.subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                  height: 1.6,
                ),
          ),
        ],
      ),
    );
  }
}

class _SlideData {
  const _SlideData({
    required this.largeBlobColor,
    required this.smallBlobColor,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
  });

  final Color largeBlobColor;
  final Color smallBlobColor;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
}
