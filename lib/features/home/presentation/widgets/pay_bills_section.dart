import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class PayBillsSection extends StatelessWidget {
  const PayBillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 134,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(15, 14, 15, 13),
      decoration: BoxDecoration(
        color: const Color(0xFFECF6F1),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: AppColors.primary.withOpacity(0.25),
        ),
      ),
      child: const Column(
        children: [
          _PayBillsHeader(),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _BillItem(
                icon: AppAssets.billLicInsurance,
                label: 'LIC /\nInsurance',
                iconWidth: 24,
                iconHeight: 24,
              ),
              _BillItem(
                icon: AppAssets.billFastag,
                label: 'FASTag\nRecharge',
                iconWidth: 25,
                iconHeight: 24,
              ),
              _BillItem(
                icon: AppAssets.billDth,
                label: 'DTH',
                iconWidth: 25,
                iconHeight: 25,
              ),
              _BillItem(
                icon: AppAssets.billMobilePostpaid,
                label: 'Mobile\nPostpaid',
                iconWidth: 24,
                iconHeight: 24,
              ),
              _BillItem(
                icon: AppAssets.billBroadband,
                label: 'Broadband\n/ Landline',
                iconWidth: 25,
                iconHeight: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PayBillsHeader extends StatelessWidget {
  const _PayBillsHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Pay Your Bills',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 19.84 / 14,
            color: Colors.black,
          ),
        ),
        Spacer(),
        Text(
          'View All',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: AppColors.primary,
          ),
        ),
        SizedBox(width: 4),
        Icon(
          Icons.chevron_right_rounded,
          size: 15,
          color: AppColors.primary,
        ),
      ],
    );
  }
}

class _BillItem extends StatelessWidget {
  const _BillItem({
    required this.icon,
    required this.label,
    required this.iconWidth,
    required this.iconHeight,
  });

  final String icon;
  final String label;
  final double iconWidth;
  final double iconHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      child: Column(
        children: [
          Container(
            width: 43,
            height: 43,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              icon,
              width: iconWidth,
              height: iconHeight,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 8,
              fontWeight: FontWeight.w400,
              height: 10.8 / 8,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}