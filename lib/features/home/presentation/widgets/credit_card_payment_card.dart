import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class CreditCardPaymentCard extends StatelessWidget {
  const CreditCardPaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 165,
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(14, 13, 13, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: AppColors.primary.withOpacity(0.34)),
          ),
          child: Stack(
            children: const [
              _CardHeader(),
              _BankDetails(),
              _AmountText(),
              _PayNowButton(),
              _SavePaymentBadge(),
            ],
          ),
        ),
        const SizedBox(height: 13),
        const _SeeAllPaymentsButton(),
      ],
    );
  }
}

class _CardHeader extends StatelessWidget {
  const _CardHeader();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      right: 0,
      child: Row(
        children: [
          Image.asset(
            AppAssets.creditCardIcon,
            width: 11,
            height: 8,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 8),
          const Text(
            'Credit Card',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xFF8F8F8F),
            ),
          ),
          const Spacer(),
          const Text(
            'Due on 20th May',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 10,
              fontWeight: FontWeight.w500,
              height: 19.84 / 10,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}

class _BankDetails extends StatelessWidget {
  const _BankDetails();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 4,
      top: 42,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            AppAssets.bankIconSvg,
            width: 17,
            height: 16,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 22),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'HSBC Card',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 19.84 / 12,
                  color: Colors.black,
                ),
              ),
              Text(
                'XXXX 0155',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 19.84 / 12,
                  color: Color(0x6B000000),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AmountText extends StatelessWidget {
  const _AmountText();

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 0,
      top: 90,
      child: Text(
        '₹25,295.00',
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 19,
          fontWeight: FontWeight.w600,
          height: 19.84 / 19,
          color: Colors.black,
        ),
      ),
    );
  }
}

class _PayNowButton extends StatelessWidget {
  const _PayNowButton();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 65,
      child: Container(
        width: 108,
        height: 34,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: const LinearGradient(
            colors: [Color(0xFF2DAB7D), Color(0xFFA1D287)],
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pay Now',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 22.68 / 12,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.chevron_right_rounded, size: 18, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class _SavePaymentBadge extends StatelessWidget {
  const _SavePaymentBadge();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 92,
      top: 119,
      child: Container(
        width: 136,
        height: 16,
        padding: const EdgeInsets.symmetric(horizontal: 7),
        decoration: BoxDecoration(
          color: const Color(0xFFD7FEE6),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.savePaymentIconSvg,
              width: 9,
              height: 9,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 3),
            const Text(
              'Save ₹267 On This Payment',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 7,
                fontWeight: FontWeight.w500,
                height: 1,
                color: Color(0xFF13784E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SeeAllPaymentsButton extends StatelessWidget {
  const _SeeAllPaymentsButton();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'See All Payments',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: AppColors.primary,
          ),
        ),
        SizedBox(width: 7),
        Icon(Icons.chevron_right_rounded, size: 17, color: AppColors.primary),
      ],
    );
  }
}
