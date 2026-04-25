import 'package:flutter/material.dart';
import '../../../core/app_color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: const SafeArea(
        child: Center(
          child: Text('Login Page'),
        ),
      ),
    );
  }
}
