import 'package:dompet_santuy/core/app_color.dart';
import 'package:dompet_santuy/modules/onboarding/page/onboarding_page.dart';
import 'package:dompet_santuy/modules/splash/widget/splash_blobs_background.dart';
import 'package:dompet_santuy/modules/splash/widget/splash_logo.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final AnimationController _subtitleController;
  late final AnimationController _progressController;

  late final Animation<double> _subtitleFade;
  late final Animation<Offset> _subtitleSlide;

  @override
  void initState() {
    super.initState();

    // Animasi subtitle & progress: dimulai di detik ke-1, fade-in 0.5 detik
    _subtitleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // Progress bar bergerak dari 0 → 1 selama 1.5 detik (detik 1.5 → 3)
    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _subtitleFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _subtitleController, curve: Curves.easeOut),
    );

    _subtitleSlide =
        Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero).animate(
          CurvedAnimation(parent: _subtitleController, curve: Curves.easeOut),
        );

    Future.delayed(const Duration(milliseconds: 1000), _startSecondPhase);
    Future.delayed(const Duration(milliseconds: 2500), _navigateToOnboarding);
  }

  void _startSecondPhase() {
    if (!mounted) return;
    _subtitleController.forward();
    _progressController.forward();
  }

  void _navigateToOnboarding() {
    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const OnboardingPage()),
    );
  }

  @override
  void dispose() {
    _subtitleController.dispose();
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          const SplashBlobsBackground(),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SplashLogo(),
                const SizedBox(height: 28),
                Text(
                  'Dompet Santuy',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 10),
                FadeTransition(
                  opacity: _subtitleFade,
                  child: SlideTransition(
                    position: _subtitleSlide,
                    child: Text(
                      'Finansial tenang, hidup nyantuy 🌿',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom:
                MediaQuery.of(context).padding.bottom +
                kBottomNavigationBarHeight,
            left: 0,
            right: 0,
            child: Center(
              child: FadeTransition(
                opacity: _subtitleFade,
                child: AnimatedBuilder(
                  animation: _progressController,
                  builder: (context, _) {
                    return SizedBox(
                      width: 100,
                      child: LinearProgressIndicator(
                        value: _progressController.value,
                        backgroundColor: AppColors.indicatorInactive,
                        valueColor: const AlwaysStoppedAnimation(
                          AppColors.indicatorActive,
                        ),
                        borderRadius: BorderRadius.circular(2),
                        minHeight: 3,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
