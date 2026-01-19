import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  final double lineLength;
  final double lineThickness;
  final double dashLength;
  final Color dashColor;
  final Axis direction;

  const DottedLine({
    super.key,
    required this.lineLength,
    required this.lineThickness,
    required this.dashLength,
    required this.dashColor,
    required this.direction,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: direction == Axis.horizontal
          ? Size(lineLength, lineThickness)
          : Size(lineThickness, lineLength),
      painter: DottedLinePainter(
        dashLength: dashLength,
        lineThickness: lineThickness,
        dashColor: dashColor,
        direction: direction,
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  final double dashLength;
  final double lineThickness;
  final Color dashColor;
  final Axis direction;

  DottedLinePainter({
    required this.dashLength,
    required this.lineThickness,
    required this.dashColor,
    required this.direction,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = dashColor
      ..strokeWidth = lineThickness
      ..style = PaintingStyle.stroke;

    double startX = 0;
    double startY = 0;

    // Draw horizontal or vertical dashed line based on the direction
    while ((direction == Axis.horizontal ? startX : startY) <
        (direction == Axis.horizontal ? size.width : size.height)) {
      if (direction == Axis.horizontal) {
        canvas.drawLine(
          Offset(startX, startY),
          Offset(startX + dashLength, startY),
          paint,
        );
        startX += dashLength * 2; // space between dashes
      } else {
        canvas.drawLine(
          Offset(startX, startY),
          Offset(startX, startY + dashLength),
          paint,
        );
        startY += dashLength * 2; // space between dashes
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
