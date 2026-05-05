import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import 'login_screen.dart';

class IntroRegistrationScreen extends StatelessWidget {
  const IntroRegistrationScreen({super.key});

  static const routePath = '/intro-registration';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 28),
          child: Column(
            children: [
              const Spacer(flex: 2),
              const Icon(Icons.engineering_rounded, size: 380, color: Color(0xFF555C66)),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () => context.go(LoginScreen.routePath),
                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.yellow, foregroundColor: Colors.black),
                  child: const Text('Continue Registration'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
