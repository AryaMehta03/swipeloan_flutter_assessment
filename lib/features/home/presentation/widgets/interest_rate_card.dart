import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      width: 267,
      height: 51,
      padding: const EdgeInsets.only(left: 15, right: 10),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.09),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: AppColors.primary.withOpacity(0.34),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            AppAssets.interestRateIconSvg,
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 8),
          const Expanded(child: _InterestRateText()),
          // const SizedBox(width: 4),
          // const Icon(
          //   Icons.chevron_right_rounded,
          //   size: 16,
          //   color: AppColors.primary,
          // ),
        ],
      ),
    );
  }
}

class _InterestRateText extends StatelessWidget {
  const _InterestRateText();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You’re eligible for a lower interest rate',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 11,
            fontWeight: FontWeight.w600,
            height: 1.0,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 4),
        Text(
          'Contact your bank to learn more',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 8,
            fontWeight: FontWeight.w400,
            height: 1.0,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
