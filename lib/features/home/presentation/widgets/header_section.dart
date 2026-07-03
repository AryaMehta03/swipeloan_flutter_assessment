import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_spacing.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  static const double _height = 431;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.heroBackground,
              fit: BoxFit.cover,
            ),
          ),

          // Profile row positioned directly from the Figma coordinates.
          const Positioned(
            left: AppSpacing.lg,
            top: 58,
            child: _ProfileInfo(),
          ),
        ],
      ),
    );
  }
}

class _ProfileInfo extends StatelessWidget {
  const _ProfileInfo();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            AppAssets.avatar,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Rohit Deshmukh',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                height: 22.68 / 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Have a good day!',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                height: 19.84 / 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}