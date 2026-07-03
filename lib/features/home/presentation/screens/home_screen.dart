import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../widgets/header_section.dart';
import '../widgets/main_content_container.dart';
import '../widgets/score_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            HeaderSection(),
            MainContentContainer(
              child: Column(
                children: [
                  ScoreCarousel(),

                  // Next sections will come here.
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}