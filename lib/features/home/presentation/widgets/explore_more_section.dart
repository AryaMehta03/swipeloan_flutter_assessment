import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class ExploreMoreSection extends StatelessWidget {
  const ExploreMoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Explore More With SwipeLoan',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 19),
        SizedBox(
          height: 145,
          child: Row(
            children: [
              Expanded(
                child: _ExploreMoreTile(
                  icon: AppAssets.exploreScorePredictor,
                  iconWidth: 59,
                  iconHeight: 59,
                ),
              ),
              SizedBox(width: 11),
              Expanded(
                child: _ExploreMoreTile(
                  icon: AppAssets.exploreCalculator,
                  iconWidth: 54,
                  iconHeight: 54,
                ),
              ),
              SizedBox(width: 11),
              Expanded(
                child: _ExploreMoreTile(
                  icon: AppAssets.exploreMoneyBag,
                  iconWidth: 53,
                  iconHeight: 53,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ExploreMoreTile extends StatelessWidget {
  const _ExploreMoreTile({
    required this.icon,
    required this.iconWidth,
    required this.iconHeight,
  });

  final String icon;
  final double iconWidth;
  final double iconHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: AppColors.primary.withOpacity(0.34),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            icon,
            width: iconWidth,
            height: iconHeight,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 6),
          const Text(
            'Score Predictor',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 9,
              fontWeight: FontWeight.w600,
              height: 19.84 / 9,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Check your score\nfactors for free',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 8,
              fontWeight: FontWeight.w400,
              height: 10.8 / 8,
              color: Colors.black,
            ),
          ),
          // const Spacer(),
          // const Align(
          //   alignment: Alignment.centerRight,
          //   child: CircleAvatar(
          //     radius: 13,
          //     backgroundColor: Color(0xFFE5F6EE),
          //     child: Icon(
          //       Icons.arrow_forward_rounded,
          //       size: 16,
          //       color: AppColors.primary,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}