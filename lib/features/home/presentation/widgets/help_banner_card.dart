import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class HelpBannerCard extends StatelessWidget {
  const HelpBannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 182,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.primary.withOpacity(.25),
        ),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xffECF6F1),
            Colors.white,
          ],
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: const [
          _HelpBannerContent(),
          _HelpBannerImage(),
        ],
      ),
    );
  }
}

class _HelpBannerContent extends StatelessWidget {
  const _HelpBannerContent();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 18,
      top: 26,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'NEED EXPERT GUIDENCE?',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 7,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              color: Color(0xff1FA36D),
            ),
          ),

          SizedBox(height: 12),

          SizedBox(
            width: 165,
            child: Text(
              'Our Team Is Ready To\nAnswer All Your Questions.',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 13,
                fontWeight: FontWeight.w700,
                height: 17.7 / 13,
                color: AppColors.textPrimary,
              ),
            ),
          ),

          SizedBox(height: 26),

          _ChatNowButton(),
        ],
      ),
    );
  }
}

class _ChatNowButton extends StatelessWidget {
  const _ChatNowButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(
          colors: [
            Color(0xff2DAB7D),
            Color(0xffA1D287),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Chat Now',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 6),
          Image.asset(
            AppAssets.headsetIcon,
            width: 13,
            height: 13,
          ),
        ],
      ),
    );
  }
}

class _HelpBannerImage extends StatelessWidget {
  const _HelpBannerImage();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:10,
      right: 10,
      bottom: 0,
      child: Image.asset(
        AppAssets.helpBannerWoman,
        width: 174,
        height: 262,
        fit: BoxFit.contain,
      ),
    );
  }
}