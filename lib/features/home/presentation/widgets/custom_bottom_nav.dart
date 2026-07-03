import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SizedBox(
        height: 88,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Positioned.fill(
              top: 14,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(.12),
                      blurRadius: 18,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _NavItem(
                        icon: AppAssets.navCreditCard,
                        label: 'Credit Card',
                      ),
                      _NavItem(
                        icon: AppAssets.navInstantLoan,
                        label: 'Instant Loan',
                        isSvg: true,
                      ),
                      SizedBox(width: 66),
                      _NavItem(
                        icon: AppAssets.navCip,
                        label: 'CIP',
                      ),
                      _NavItem(
                        icon: AppAssets.navOtherLoan,
                        label: 'Other Loan',
                        selected: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const _HomeButton(),
          ],
        ),
      ),
    );
  }
}

class _HomeButton extends StatelessWidget {
  const _HomeButton();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -math.pi / 4,
      child: Container(
        width: 63,
        height: 63,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              Color(0xff32A763),
              Color(0xff157E77),
            ],
          ),
        ),
        child: Transform.rotate(
          angle: math.pi / 4,
          child: Center(
            child: Image.asset(
              AppAssets.navHome,
              width: 19,
              height: 21,
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    this.selected = false,
    this.isSvg = false,
  });

  final String icon;
  final String label;
  final bool selected;
  final bool isSvg;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isSvg)
            SvgPicture.asset(
              icon,
              width: 16,
              height: 16,
              fit: BoxFit.contain,
            )
          else
            Image.asset(
              icon,
              width: 16,
              height: 16,
              fit: BoxFit.contain,
            ),
          const SizedBox(height: 7),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 7,
              fontWeight: FontWeight.w500,
              color: selected ? AppColors.primary : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}