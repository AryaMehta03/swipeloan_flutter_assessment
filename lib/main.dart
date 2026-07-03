import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/home/presentation/screens/home_screen.dart';

void main() {
  // Entry point of the Flutter application.
  runApp(const SwipeLoanAssessmentApp());
}

class SwipeLoanAssessmentApp extends StatelessWidget {
  const SwipeLoanAssessmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwipeLoan Assessment',
      debugShowCheckedModeBanner: false,

      // Central theme for the complete app.
      // All screens should reuse this instead of defining styles repeatedly.
      theme: AppTheme.lightTheme,

      home: const HomeScreen(),
    );
  }
}