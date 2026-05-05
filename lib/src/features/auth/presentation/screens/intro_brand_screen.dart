import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import 'intro_registration_screen.dart';

class IntroBrandScreen extends StatelessWidget {
  const IntroBrandScreen({super.key});

  static const routePath = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => context.go(IntroRegistrationScreen.routePath),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Row(
                  children: [
                    Icon(Icons.electrical_services_rounded, color: AppColors.yellow, size: 48),
                    SizedBox(width: 12),
                    Text('SIRF SERVICE', style: TextStyle(fontSize: 48 / 2, fontWeight: FontWeight.w700)),
                  ],
                ),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: Text('Service Industry Refined For You\nReliable.Premium.Redefined', style: TextStyle(color: AppColors.muted, fontSize: 16)),
                ),
                Spacer(),
                Center(child: Icon(Icons.engineering_rounded, size: 360, color: Color(0xFF555C66))),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
