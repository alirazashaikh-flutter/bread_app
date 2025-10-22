import 'package:flutter/material.dart';
import 'dart:math';

class OnboardingCustomStar extends StatelessWidget {
  final Color bgColor;
  const OnboardingCustomStar({super.key,required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(15, 15), // size of star
      painter: StarPainter(points: 8,bgColor: bgColor), // yahan points change karke star modify kar sakte ho
    );
  }
}

class StarPainter extends CustomPainter {
  final int points;
  final Color bgColor;

  StarPainter({this.points = 5,required this.bgColor}); // default 5-point star

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = bgColor
      ..style = PaintingStyle.fill;

    final Path path = Path();
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double radius = size.width / 2;

    // total points = double (outer + inner)
    for (int i = 0; i < points * 2; i++) {
      double angle = (pi / points) * i;
      double r = (i % 2 == 0) ? radius : radius / 2; // outer/inner radius
      double x = centerX + r * cos(angle);
      double y = centerY + r * sin(angle);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
