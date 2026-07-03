import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class EarnCoinsTile extends StatelessWidget {
  const EarnCoinsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      padding: const EdgeInsets.only(left: 15, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: AppColors.primary.withOpacity(0.34),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            AppAssets.earnCoinsGiftBox,
            width: 17,
            height: 18,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 18),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Earn 100 Coins',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    height: 25.7 / 11,
                    color: AppColors.textPrimary,
                  ),
                ),
                Text(
                  'Complete actions and earn rewards',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    height: 19.84 / 8,
                    color: Color(0xFF737373),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.chevron_right_rounded,
            size: 22,
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}