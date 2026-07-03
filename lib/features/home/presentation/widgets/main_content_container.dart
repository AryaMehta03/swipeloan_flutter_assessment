import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';


class MainContentContainer extends StatelessWidget {
  const MainContentContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -122),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        decoration: const BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(23),
          ),
        ),
        child: child,
      ),
    );
  }
}