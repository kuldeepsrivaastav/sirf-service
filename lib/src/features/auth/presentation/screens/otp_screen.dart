import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../widgets/auth_shell.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  static const routePath = '/otp';

  @override
  Widget build(BuildContext context) {
    return AuthShell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 36),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text('Verification Code', style: TextStyle(fontSize: 52 / 2, fontWeight: FontWeight.w700)),
            const SizedBox(height: 20),
            const Text('Enter the 6-digit verification code', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [2, 4, 3, 7, 5, 6]
                  .map((e) => _OtpBox(digit: '$e'))
                  .toList(),
            ),
            const SizedBox(height: 36),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.yellow, foregroundColor: Colors.black),
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            const Text.rich(TextSpan(text: 'Resend Code in ', style: TextStyle(fontWeight: FontWeight.w700), children: [TextSpan(text: '60s', style: TextStyle(color: AppColors.muted, fontWeight: FontWeight.w400))])),
          ],
        ),
      ),
    );
  }
}

class _OtpBox extends StatelessWidget {
  const _OtpBox({required this.digit});

  final String digit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 56,
      decoration: BoxDecoration(color: AppColors.inputGray, borderRadius: BorderRadius.circular(12)),
      alignment: Alignment.center,
      child: Text(digit, style: const TextStyle(fontSize: 18)),
    );
  }
}
