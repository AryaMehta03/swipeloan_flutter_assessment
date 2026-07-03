import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../widgets/header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeaderSection(),

            // Main white rounded content starts here next.
          ],
        ),
      ),
    );
  }
}