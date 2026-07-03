import 'package:flutter/material.dart';

class AppRadius {
  const AppRadius._();

  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 28;

  static BorderRadius get card => BorderRadius.circular(lg);
  static BorderRadius get largeCard => BorderRadius.circular(xl);
  static BorderRadius get pill => BorderRadius.circular(100);
}