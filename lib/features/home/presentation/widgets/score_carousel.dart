import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

class ScoreCarousel extends StatefulWidget {
  const ScoreCarousel({super.key});

  @override
  State<ScoreCarousel> createState() => _ScoreCarouselState();
}

class _ScoreCarouselState extends State<ScoreCarousel> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          height: _selectedIndex == 0 ? 285 : 285,
          child: PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: const [_ScoreImprovementPlan(), _ScoreProgressPlan()],
          ),
        ),
        const SizedBox(height: 8),
        _PageIndicator(selectedIndex: _selectedIndex),
      ],
    );
  }
}

class _ScoreImprovementPlan extends StatelessWidget {
  const _ScoreImprovementPlan();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _ScoreProgressBadge(),
        SizedBox(height: 32),
        Row(
          children: [
            Expanded(child: _CreditScoreCircle()),
            SizedBox(width: 24),
            Expanded(child: _ScorePlanDetails()),
          ],
        ),
        const SizedBox(height: 25,),
        Text(
          'Your Credit Score Is -1\nYou Have Not Taken Any Loan Till Now.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 11,
            fontWeight: FontWeight.w600,
            height: 14.7 / 11,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}

class _ScoreProgressBadge extends StatelessWidget {
  const _ScoreProgressBadge();

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.scoreProgressBadge,
      width: 114,
      height: 15,
      fit: BoxFit.contain,
    );
  }
}

class _ActiveBadge extends StatelessWidget {
  const _ActiveBadge();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.scoreCarouselBadge,
      width: 114,
      height: 15,
      fit: BoxFit.contain,
    );
  }
}

class _CreditScoreCircle extends StatelessWidget {
  const _CreditScoreCircle();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Stack(
        alignment: Alignment.center,
        children: const [
          SizedBox(
            height: 112,
            width: 112,
            child: CircularProgressIndicator(
              value: 0.78,
              strokeWidth: 10,
              backgroundColor: Color(0xFFEFEFEF),
              valueColor: AlwaysStoppedAnimation(Color(0xFFEFEFEF)),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '-1',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  height: 34 / 32,
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Last Updated\n12 May 2026',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 7,
                  fontWeight: FontWeight.w400,
                  height: 11 / 7,
                  color: Color(0xFF5D7EA8),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ScorePlanDetails extends StatelessWidget {
  const _ScorePlanDetails();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Score Improvement Plan',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 13,
            fontWeight: FontWeight.w600,
            height: 25.7 / 13,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '0% ',
                style: TextStyle(color: AppColors.primary),
              ),
              TextSpan(text: 'Completed'),
            ],
          ),
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 13,
            fontWeight: FontWeight.w500,
            height: 19.84 / 13,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 153,
            height: 5,
            color: const Color(0xFFD9D9D9),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'May 2025',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 7,
            fontWeight: FontWeight.w400,
            color: Color(0xFFD9D9D9),
          ),
        ),
        const SizedBox(height: 18),
        const FittedBox(
          alignment: Alignment.centerLeft,
          child: _RefreshScoreButton(),
        ),
      ],
    );
  }
}

class _RefreshScoreButton extends StatelessWidget {
  const _RefreshScoreButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: AppColors.primary),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'Refresh my Score',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
            ),
          ),
          SizedBox(width: 8),
          Icon(Icons.chevron_right, size: 18, color: AppColors.primary),
        ],
      ),
    );
  }
}

class _ScoreProgressPlan extends StatelessWidget {
  const _ScoreProgressPlan();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Center(child: _ScoreProgressBadge()),
        SizedBox(height: 24),
        _ScoreProgressHeader(),
        SizedBox(height: 18),
        _ScoreLineChart(),
        SizedBox(height: 12),
        _ScoreImprovedBanner(),
      ],
    );
  }
}

class _ScoreProgressHeader extends StatelessWidget {
  const _ScoreProgressHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Score Progress',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Track your credit score improvement over time',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF8C8C8C),
                ),
              ),
            ],
          ),
        ),
        _DurationDropdown(),
      ],
    );
  }
}

class _DurationDropdown extends StatelessWidget {
  const _DurationDropdown();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: AppColors.primary.withOpacity(0.55)),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '6 Months',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(width: 8),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 17,
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}

class _ScoreLineChart extends StatelessWidget {
  const _ScoreLineChart();

  static const List<_ScorePoint> _points = [
    _ScorePoint(label: '31 Dec', score: 720, tagColor: Color(0xFFFFD4D8)),
    _ScorePoint(label: '31 Jan', score: 750, tagColor: Color(0xFFFFE4BD)),
    _ScorePoint(label: '28 Feb', score: 785, tagColor: Color(0xFFFFE7AF)),
    _ScorePoint(label: '31 Mar', score: 805, tagColor: Color(0xFFCFF5DE)),
    _ScorePoint(label: '30 Apr', score: 820, tagColor: Color(0xFFCFF5DE)),
    _ScorePoint(label: '31 May', score: 845, tagColor: Color(0xFFCFF5DE)),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 122,
      width: double.infinity,
      child: CustomPaint(painter: _ScoreLineChartPainter(points: _points)),
    );
  }
}

class _ScoreLineChartPainter extends CustomPainter {
  const _ScoreLineChartPainter({required this.points});

  final List<_ScorePoint> points;

  @override
  void paint(Canvas canvas, Size size) {
    const leftPadding = 32.0;
    const rightPadding = 14.0;
    const topPadding = 6.0;
    const bottomPadding = 24.0;

    final chartWidth = size.width - leftPadding - rightPadding;
    final chartHeight = size.height - topPadding - bottomPadding;

    final axisTextPainter = TextPainter(
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
    );

    final yAxisPaint = Paint()
      ..color = Colors.transparent
      ..strokeWidth = 1;

    final linePaint = Paint()
      ..color = AppColors.primary
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final dottedLinePaint = Paint()
      ..color = AppColors.primary
      ..strokeWidth = 1.4
      ..style = PaintingStyle.stroke;

    final fillPaint = Paint()
      ..shader =
          LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primary.withOpacity(0.14),
              AppColors.primary.withOpacity(0.02),
            ],
          ).createShader(
            Rect.fromLTWH(leftPadding, topPadding, chartWidth, chartHeight),
          );

    final minScore = 700.0;
    final maxScore = 850.0;

    Offset pointOffset(int index, int score) {
      final x = leftPadding + (chartWidth / (points.length - 1)) * index;
      final y =
          topPadding +
          chartHeight -
          (((score - minScore) / (maxScore - minScore)) * chartHeight);
      return Offset(x, y);
    }

    final offsets = <Offset>[
      for (int i = 0; i < points.length; i++) pointOffset(i, points[i].score),
    ];

    // Y-axis labels.
    for (final score in [850, 800, 750, 700]) {
      final y =
          topPadding +
          chartHeight -
          (((score - minScore) / (maxScore - minScore)) * chartHeight);

      axisTextPainter.text = TextSpan(
        text: '$score',
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 9,
          fontWeight: FontWeight.w400,
          color: Color(0xFF6F6F6F),
        ),
      );
      axisTextPainter.layout();
      axisTextPainter.paint(canvas, Offset(0, y - 6));

      canvas.drawLine(
        Offset(leftPadding, y),
        Offset(size.width - rightPadding, y),
        yAxisPaint,
      );
    }

    // Area below line.
    final fillPath = Path()
      ..moveTo(offsets.first.dx, chartHeight + topPadding)
      ..lineTo(offsets.first.dx, offsets.first.dy);

    for (int i = 1; i < offsets.length - 1; i++) {
      fillPath.lineTo(offsets[i].dx, offsets[i].dy);
    }

    fillPath
      ..lineTo(offsets[4].dx, offsets[4].dy)
      ..lineTo(offsets[4].dx, chartHeight + topPadding)
      ..close();

    canvas.drawPath(fillPath, fillPaint);

    // Solid line till 30 Apr.
    final solidPath = Path()..moveTo(offsets.first.dx, offsets.first.dy);
    for (int i = 1; i <= 4; i++) {
      solidPath.lineTo(offsets[i].dx, offsets[i].dy);
    }
    canvas.drawPath(solidPath, linePaint);

    // Dotted projected line to 31 May.
    final dottedPath = Path()
      ..moveTo(offsets[4].dx, offsets[4].dy)
      ..lineTo(offsets[5].dx, offsets[5].dy);

    _drawDashedPath(canvas, dottedPath, dottedLinePaint);

    // X-axis labels, points and score tags.
    for (int i = 0; i < points.length; i++) {
      final point = points[i];
      final offset = offsets[i];

      axisTextPainter.text = TextSpan(
        text: point.label,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 9,
          fontWeight: FontWeight.w400,
          color: Color(0xFF6F6F6F),
        ),
      );
      axisTextPainter.layout();
      axisTextPainter.paint(
        canvas,
        Offset(offset.dx - axisTextPainter.width / 2, size.height - 13),
      );

      if (i == 5) {
        final ringPaint = Paint()
          ..color = AppColors.primary
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.5;
        canvas.drawCircle(offset, 6.5, ringPaint);
      } else if (i == 4) {
        final outerPaint = Paint()
          ..color = AppColors.primary.withOpacity(0.22)
          ..style = PaintingStyle.fill;
        final innerPaint = Paint()
          ..color = AppColors.primary
          ..style = PaintingStyle.fill;

        canvas.drawCircle(offset, 10, outerPaint);
        canvas.drawCircle(offset, 4, innerPaint);
      } else {
        final pointPaint = Paint()
          ..color = AppColors.primary
          ..style = PaintingStyle.fill;
        canvas.drawCircle(offset, 5, pointPaint);
      }

      _drawScoreTag(
        canvas: canvas,
        center: Offset(offset.dx, offset.dy - 20),
        score: point.score,
        color: point.tagColor,
      );
    }
  }

  void _drawScoreTag({
    required Canvas canvas,
    required Offset center,
    required int score,
    required Color color,
  }) {
    final rect = RRect.fromRectAndRadius(
      Rect.fromCenter(center: center, width: 29, height: 18),
      const Radius.circular(4),
    );

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawRRect(rect, paint);

    final textPainter = TextPainter(
      text: TextSpan(
        text: '$score',
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 9,
          fontWeight: FontWeight.w700,
          color: Color(0xFF2F2F2F),
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout();

    textPainter.paint(
      canvas,
      Offset(center.dx - textPainter.width / 2, center.dy - 5),
    );
  }

  void _drawDashedPath(Canvas canvas, Path path, Paint paint) {
    const dashWidth = 4.0;
    const dashSpace = 4.0;

    for (final metric in path.computeMetrics()) {
      double distance = 0;

      while (distance < metric.length) {
        final nextDistance = distance + dashWidth;
        canvas.drawPath(metric.extractPath(distance, nextDistance), paint);
        distance = nextDistance + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(covariant _ScoreLineChartPainter oldDelegate) {
    return oldDelegate.points != points;
  }
}

class _ScorePoint {
  const _ScorePoint({
    required this.label,
    required this.score,
    required this.tagColor,
  });

  final String label;
  final int score;
  final Color tagColor;
}

class _ScoreImprovedBanner extends StatelessWidget {
  const _ScoreImprovedBanner();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 26),
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.08),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.primary.withOpacity(0.7)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.trending_up_rounded, size: 30, color: AppColors.primary),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Your Score Improved By '),
                      TextSpan(
                        text: '100 Points!',
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Keep up the great work!',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8C8C8C),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PageIndicator extends StatelessWidget {
  const _PageIndicator({required this.selectedIndex});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(2, (index) {
        final isSelected = selectedIndex == index;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: isSelected ? 24 : 6,
          height: 6,
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(100),
          ),
        );
      }),
    );
  }
}
