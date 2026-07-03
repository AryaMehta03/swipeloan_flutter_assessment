import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class InterestRateCard extends StatelessWidget {
  const InterestRateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.86),
        padEnds: false,
        itemCount: 2,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 14),
            child: _InterestRateTile(),
          );
        },
      ),
    );
  }
}

class _InterestRateTile extends StatelessWidget {
  const _InterestRateTile();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 51,
      padding: const EdgeInsets.only(left: 15, right: 14),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.06),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: AppColors.primary.withOpacity(0.34),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            AppAssets.interestRateIcon,
            width: 20,
            height: 20,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 18),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You’re Eligible For A Lower Interest Rate',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    height: 25.7 / 11,
                    color: AppColors.textPrimary,
                  ),
                ),
                Text(
                  'Contact you bank to learn more',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    height: 19.84 / 8,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.chevron_right_rounded,
            size: 14,
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}