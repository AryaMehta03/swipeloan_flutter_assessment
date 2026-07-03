import 'package:flutter/material.dart';
import 'package:swipeloan_flutter_assessment/features/home/presentation/widgets/credit_card_payment_card.dart';

import '../../../../core/constants/app_colors.dart';
import '../widgets/header_section.dart';
import '../widgets/main_content_container.dart';
import '../widgets/earn_coins_tile.dart';
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
                  const SizedBox(height: 22),
                  const EarnCoinsTile(),
                  const SizedBox(height: 12),
                  const CreditCardPaymentCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
