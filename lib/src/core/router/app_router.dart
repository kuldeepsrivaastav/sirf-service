import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/screens/intro_brand_screen.dart';
import '../../features/auth/presentation/screens/intro_registration_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/otp_screen.dart';

class AppRouter {
  const AppRouter._();

  static final router = GoRouter(
    initialLocation: IntroBrandScreen.routePath,
    routes: [
      GoRoute(path: IntroBrandScreen.routePath, builder: (_, __) => const IntroBrandScreen()),
      GoRoute(path: IntroRegistrationScreen.routePath, builder: (_, __) => const IntroRegistrationScreen()),
      GoRoute(path: LoginScreen.routePath, builder: (_, __) => const LoginScreen()),
      GoRoute(path: OtpScreen.routePath, builder: (_, __) => const OtpScreen()),
    ],
    errorBuilder: (_, __) => const Scaffold(body: Center(child: Text('Page not found'))),
  );
}
