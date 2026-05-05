import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class AuthShell extends StatelessWidget {
  const AuthShell({
    super.key,
    required this.child,
    this.showBack = true,
  });

  final Widget child;
  final bool showBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 320,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (showBack)
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                        child: const Icon(Icons.chevron_left),
                      ),
                    const Spacer(),
                    const Icon(Icons.electrical_services_rounded, color: Color(0xFF8E7A10), size: 52),
                    const SizedBox(height: 12),
                    const Text('Welcome to', style: TextStyle(fontSize: 44 / 1.6, fontWeight: FontWeight.w400)),
                    const Text('SIRF SERVICE', style: TextStyle(fontSize: 46 / 1.6, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 10),
                    const Text(
                      'Login top continue your journey with us',
                      style: TextStyle(fontSize: 32 / 2, color: AppColors.dark),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.lightGray,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
                ),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
