import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import '../widgets/auth_shell.dart';
import 'otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routePath = '/login';

  @override
  Widget build(BuildContext context) {
    return AuthShell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text('Login', style: TextStyle(fontSize: 52 / 2, fontWeight: FontWeight.w700)),
            const SizedBox(height: 28),
            const Text('Phone No.', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 14),
            Container(
              height: 56,
              decoration: BoxDecoration(color: AppColors.inputGray, borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text('+91', style: TextStyle(color: Colors.grey, fontSize: 30 / 2)),
            ),
            const SizedBox(height: 34),
            ElevatedButton(
              onPressed: () => context.go(OtpScreen.routePath),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.yellow, foregroundColor: Colors.black),
              child: const Text('Continue'),
            ),
            const SizedBox(height: 24),
            const Center(child: Text.rich(TextSpan(text: "Don't have an account? ", children: [TextSpan(text: 'Create one', style: TextStyle(fontWeight: FontWeight.w700))]))),
          ],
        ),
      ),
    );
  }
}
