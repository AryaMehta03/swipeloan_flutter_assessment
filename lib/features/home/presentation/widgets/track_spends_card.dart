import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class TrackSpendsCard extends StatelessWidget {
  const TrackSpendsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        _TrackSpendsHeader(),
        SizedBox(height: 8),
        _SpendingReportCard(),
      ],
    );
  }
}

class _TrackSpendsHeader extends StatelessWidget {
  const _TrackSpendsHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Track Your Spends',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Spacer(),
        Icon(
          Icons.calendar_month_outlined,
          size: 14,
          color: Colors.black,
        ),
        SizedBox(width: 5),
        Text(
          '05 May',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class _SpendingReportCard extends StatelessWidget {
  const _SpendingReportCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(42, 22, 42, 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF179F6D),
            Color(0xFF88D665),
          ],
        ),
      ),
      child: Column(
        children: const [
          _ReportTitle(),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _SpendAmountTile(
                  type: 'Debit',
                  amount: '₹40,000',
                  icon: AppAssets.debitWallet,
                  badgeColor: Color(0xFFEA1111),
                  arrowIcon: Icons.arrow_downward_rounded,
                  iconWidth: 26,
                  iconHeight: 26,
                ),
              ),
              SizedBox(width: 9),
              Expanded(
                child: _SpendAmountTile(
                  type: 'Credit',
                  amount: '₹1,150,496',
                  icon: AppAssets.creditWallet,
                  badgeColor: Color(0xFF40BA6B),
                  arrowIcon: Icons.arrow_upward_rounded,
                  iconWidth: 30,
                  iconHeight: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          _ViewReportButton(),
        ],
      ),
    );
  }
}

class _ReportTitle extends StatelessWidget {
  const _ReportTitle();

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'Your Daily Spending Report Is\nReady For '),
          TextSpan(
            text: '5th May',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ],
      ),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 15.8 / 11,
        color: Colors.white,
      ),
    );
  }
}

class _SpendAmountTile extends StatelessWidget {
  const _SpendAmountTile({
    required this.type,
    required this.amount,
    required this.icon,
    required this.badgeColor,
    required this.arrowIcon,
    required this.iconWidth,
    required this.iconHeight,
  });

  final String type;
  final String amount;
  final String icon;
  final Color badgeColor;
  final IconData arrowIcon;
  final double iconWidth;
  final double iconHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.only(left: 17, right: 10, top: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: _TypeBadge(
              label: type,
              color: badgeColor,
              icon: arrowIcon,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 16,
            child: Image.asset(
              icon,
              width: iconWidth,
              height: iconHeight,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            left: 35,
            bottom: 18,
            child: Text(
              amount,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 11,
                fontWeight: FontWeight.w600,
                height: 19.84 / 11,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TypeBadge extends StatelessWidget {
  const _TypeBadge({
    required this.label,
    required this.color,
    required this.icon,
  });

  final String label;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 7,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 3),
          Icon(
            icon,
            size: 9,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _ViewReportButton extends StatelessWidget {
  const _ViewReportButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: const Text(
        'View Full Report',
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.primary,
        ),
      ),
    );
  }
}