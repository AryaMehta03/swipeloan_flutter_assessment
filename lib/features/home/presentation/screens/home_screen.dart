import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,

      // SafeArea prevents content from going under status bar/notch.
      body: SafeArea(
        child: SizedBox.expand(),
      ),
    );
  }
}