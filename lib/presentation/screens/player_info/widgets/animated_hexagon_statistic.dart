import 'dart:math';

import 'package:flutter/material.dart';

/// A widget for displaying animated hexagon statistics.
class AnimatedHexagonStatistic extends StatefulWidget {
  /// Constructs a new instance of [AnimatedHexagonStatistic].
  const AnimatedHexagonStatistic({
    super.key,
    required this.size,
    required this.values,
    required this.labels,
  });

  /// The size of the hexagon widget.
  final double size;

  /// The values for the hexagon edges.
  final List<int> values;

  /// The labels for the hexagon edges.
  final List<String> labels;

  @override
  State<AnimatedHexagonStatistic> createState() =>
      _AnimatedHexagonStatisticState();
}

class _AnimatedHexagonStatisticState extends State<AnimatedHexagonStatistic>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller
      ..forward() // Start the animation when the widget appears
      ..addListener(() {
        setState(() {}); // Rebuild the widget on each animation frame
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Stack(
        children: [
          _buildOuterHexagon(),
          _buildInnerHexagon(),
          _buildLabelHexagon(),
        ],
      ),
    );
  }

  Widget _buildOuterHexagon() {
    return CustomPaint(
      painter: _HexagonPainter(
        color: Colors.orange,
      ),
      size: Size(widget.size, widget.size),
    );
  }

  Widget _buildInnerHexagon() {
    return CustomPaint(
      painter: _InnerHexagonPainter(
        color: Colors.deepPurple,
        values: widget.values,
        animation: _animation,
        userSize: widget.size,
      ),
      size: Size(widget.size, widget.size),
    );
  }

  Widget _buildLabelHexagon() {
    return CustomPaint(
      painter: _LabelPainter(
        color: Colors.transparent,
        values: widget.values,
        labels: widget.labels,
      ),
      size: Size(widget.size, widget.size),
    );
  }
}

class _HexagonPainter extends CustomPainter {
  _HexagonPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = size.width / 2 - 5; // Subtracting 5 for padding

    final points = List.generate(6, (i) {
      final angle = 2 * pi / 6 * i;
      final x = centerX + radius * cos(angle);
      final y = centerY + radius * sin(angle);
      return Offset(x, y);
    });

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()..moveTo(points[0].dx, points[0].dy);
    for (var i = 1; i < points.length; i++) {
      path.lineTo(points[i].dx, points[i].dy);
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _InnerHexagonPainter extends CustomPainter {
  _InnerHexagonPainter({
    required this.color,
    required this.values,
    required this.animation,
    required this.userSize,
  });

  final Color color;
  final List<int> values;
  final Animation<double> animation;
  final double userSize;

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final outerRadius =
        (size.width / 2) - userSize / 2; // Subtracting size for padding
    final innerRadius = outerRadius / 2;

    final points = List.generate(6, (i) {
      final angle = 2 * pi / 6 * i;
      final value = values[i];
      final animationValue = Curves.easeInOut
          .transform(animation.value); // Apply custom animation curve
      final radius = innerRadius +
          value * animationValue; // Vary radius based on animation progress
      final x = centerX + radius * cos(angle);
      final y = centerY + radius * sin(angle);
      return Offset(x, y);
    });

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final path = Path()..moveTo(points[0].dx, points[0].dy);
    for (var i = 1; i < points.length; i++) {
      path.lineTo(points[i].dx, points[i].dy);
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _LabelPainter extends CustomPainter {
  _LabelPainter({
    required this.color,
    required this.values,
    required this.labels,
  });

  final Color color;
  final List<int> values;
  final List<String> labels;

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = size.width / 2 - 5; // Subtracting 5 for padding

    final points = List.generate(6, (i) {
      final angle = 2 * pi / 6 * i;
      final x = centerX + radius * cos(angle);
      final y = centerY + radius * sin(angle);
      return Offset(x, y);
    });

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()..moveTo(points[0].dx, points[0].dy);
    for (var i = 1; i < points.length; i++) {
      path.lineTo(points[i].dx, points[i].dy);
    }
    path.close();

    canvas.drawPath(path, paint);

    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );

    for (var i = 0; i < points.length; i++) {
      final value = values[i].toStringAsFixed(1);
      final label = labels[i];

      final textPainter = TextPainter(
        text: TextSpan(text: '$label\n$value', style: textStyle),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      )..layout();

      final textX = points[i].dx - textPainter.width / 2;
      final textY = points[i].dy - textPainter.height / 2;

      textPainter.paint(canvas, Offset(textX, textY));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
