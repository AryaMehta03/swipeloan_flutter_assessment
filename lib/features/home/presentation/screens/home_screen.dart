import 'package:flutter/material.dart';
import 'package:swipeloan_flutter_assessment/features/home/presentation/widgets/credit_card_payment_card.dart';
import 'package:swipeloan_flutter_assessment/features/home/presentation/widgets/custom_bottom_nav.dart';
import 'package:swipeloan_flutter_assessment/features/home/presentation/widgets/explore_more_section.dart';
import 'package:swipeloan_flutter_assessment/features/home/presentation/widgets/help_banner_card.dart';
import 'package:swipeloan_flutter_assessment/features/home/presentation/widgets/interest_rate_card.dart';
import 'package:swipeloan_flutter_assessment/features/home/presentation/widgets/loan_option_card.dart';
import 'package:swipeloan_flutter_assessment/features/home/presentation/widgets/pay_bills_section.dart';
import 'package:swipeloan_flutter_assessment/features/home/presentation/widgets/track_spends_card.dart';

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
                  const SizedBox(height: 12),
                  const InterestRateCard(),
                  const SizedBox(height: 13),
                  const LoanOptionCard(),
                  const SizedBox(height: 13),
                  const PayBillsSection(),
                  const SizedBox(height: 13),
                  const TrackSpendsCard(),
                  const SizedBox(height: 21),
                  const ExploreMoreSection(),
                  const SizedBox(height: 18),
                  const HelpBannerCard(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
