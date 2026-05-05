import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome back', style: theme.textTheme.headlineLarge),
        const SizedBox(height: 8),
        Text(
          'Sign in to continue booking services quickly and securely.',
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
