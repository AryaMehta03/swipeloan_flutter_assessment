import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class LoanOptionCard extends StatelessWidget {
  const LoanOptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 31, top: 25, bottom: 21),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: AppColors.primary.withOpacity(0.25),
        ),
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color(0xFFECF6F1),
          ],
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: const [
          _LoanCardContent(),
          _LoanImage(),
        ],
      ),
    );
  }
}

class _LoanCardContent extends StatelessWidget {
  const _LoanCardContent();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      bottom: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Loan Option For You\n'),
                TextSpan(
                  text: 'Uto 1 Lakhs',
                  style: TextStyle(color: AppColors.primary),
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Image(
                      image: AssetImage(AppAssets.loanThunder),
                      width: 7,
                      height: 12,
                    ),
                  ),
                ),
              ],
            ),
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              height: 23.7 / 16,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 22),
          _LoanBulletText(text: 'Hassle free process'),
          SizedBox(height: 9),
          _LoanBulletText(text: 'instant transfer'),
          Spacer(),
          _ApplyNowButton(),
        ],
      ),
    );
  }
}

class _LoanBulletText extends StatelessWidget {
  const _LoanBulletText({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          '•',
          style: TextStyle(
            fontSize: 14,
            height: 1,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 7),
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 8,
            fontWeight: FontWeight.w400,
            height: 16.8 / 8,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class _ApplyNowButton extends StatelessWidget {
  const _ApplyNowButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 34,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF2DAB7D),
            Color(0xFFA1D287),
          ],
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Apply Now',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              fontWeight: FontWeight.w500,
              height: 22.68 / 12,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 8),
          Icon(
            Icons.chevron_right_rounded,
            size: 18,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _LoanImage extends StatelessWidget {
  const _LoanImage();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -1,
      bottom: -21,
      child: Image.asset(
        AppAssets.loanOption,
        width: 124,
        height: 157,
        fit: BoxFit.contain,
      ),
    );
  }
}