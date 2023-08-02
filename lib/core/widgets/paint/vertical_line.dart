import 'package:flutter/material.dart';

class VerticalLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.8409091);
    path_0.cubicTo(size.width * 0.7761500, size.height * 0.8409091, size.width,
        size.height * 0.8765216, size.width, size.height * 0.9204545);
    path_0.cubicTo(size.width, size.height * 0.9643875, size.width * 0.7761500,
        size.height, size.width * 0.5000000, size.height);
    path_0.cubicTo(size.width * 0.2238500, size.height, 0,
        size.height * 0.9643875, 0, size.height * 0.9204545);
    path_0.cubicTo(
        0,
        size.height * 0.8765216,
        size.width * 0.2238500,
        size.height * 0.8409091,
        size.width * 0.5000000,
        size.height * 0.8409091);
    path_0.close();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.8886364);
    path_0.cubicTo(
        size.width * 0.4469564,
        size.height * 0.8886364,
        size.width * 0.3960857,
        size.height * 0.8919886,
        size.width * 0.3585786,
        size.height * 0.8979557);
    path_0.cubicTo(
        size.width * 0.3210714,
        size.height * 0.9039227,
        size.width * 0.3000000,
        size.height * 0.9120159,
        size.width * 0.3000000,
        size.height * 0.9204545);
    path_0.cubicTo(
        size.width * 0.3000000,
        size.height * 0.9288932,
        size.width * 0.3210714,
        size.height * 0.9369864,
        size.width * 0.3585786,
        size.height * 0.9429534);
    path_0.cubicTo(
        size.width * 0.3960857,
        size.height * 0.9489205,
        size.width * 0.4469564,
        size.height * 0.9522727,
        size.width * 0.5000000,
        size.height * 0.9522727);
    path_0.cubicTo(
        size.width * 0.5530436,
        size.height * 0.9522727,
        size.width * 0.6039143,
        size.height * 0.9489205,
        size.width * 0.6414214,
        size.height * 0.9429534);
    path_0.cubicTo(
        size.width * 0.6789286,
        size.height * 0.9369864,
        size.width * 0.7000000,
        size.height * 0.9288932,
        size.width * 0.7000000,
        size.height * 0.9204545);
    path_0.cubicTo(
        size.width * 0.7000000,
        size.height * 0.9120159,
        size.width * 0.6789286,
        size.height * 0.9039227,
        size.width * 0.6414214,
        size.height * 0.8979557);
    path_0.cubicTo(
        size.width * 0.6039143,
        size.height * 0.8919886,
        size.width * 0.5530436,
        size.height * 0.8886364,
        size.width * 0.5000000,
        size.height * 0.8886364);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xffDDE1E4).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.1071429;
    paint_1_stroke.color = const Color(0xffDDE1E4).withOpacity(1.0);
    canvas.drawLine(
        Offset(size.width * 0.4464286, size.height * 0.8409091),
        Offset(size.width * 0.4464286, size.height * 0.1590909),
        paint_1_stroke);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.5000000, 0);
    path_2.cubicTo(size.width * 0.7761500, 0, size.width,
        size.height * 0.03561250, size.width, size.height * 0.07954545);
    path_2.cubicTo(
        size.width,
        size.height * 0.1234784,
        size.width * 0.7761500,
        size.height * 0.1590909,
        size.width * 0.5000000,
        size.height * 0.1590909);
    path_2.cubicTo(size.width * 0.2238500, size.height * 0.1590909, 0,
        size.height * 0.1234784, 0, size.height * 0.07954545);
    path_2.cubicTo(0, size.height * 0.03561250, size.width * 0.2238500, 0,
        size.width * 0.5000000, 0);
    path_2.close();
    path_2.moveTo(size.width * 0.5000000, size.height * 0.04772727);
    path_2.cubicTo(
        size.width * 0.4469564,
        size.height * 0.04772727,
        size.width * 0.3960857,
        size.height * 0.05107955,
        size.width * 0.3585786,
        size.height * 0.05704659);
    path_2.cubicTo(
        size.width * 0.3210714,
        size.height * 0.06301364,
        size.width * 0.3000000,
        size.height * 0.07110670,
        size.width * 0.3000000,
        size.height * 0.07954545);
    path_2.cubicTo(
        size.width * 0.3000000,
        size.height * 0.08798420,
        size.width * 0.3210714,
        size.height * 0.09607727,
        size.width * 0.3585786,
        size.height * 0.1020443);
    path_2.cubicTo(
        size.width * 0.3960857,
        size.height * 0.1080114,
        size.width * 0.4469564,
        size.height * 0.1113636,
        size.width * 0.5000000,
        size.height * 0.1113636);
    path_2.cubicTo(
        size.width * 0.5530436,
        size.height * 0.1113636,
        size.width * 0.6039143,
        size.height * 0.1080114,
        size.width * 0.6414214,
        size.height * 0.1020443);
    path_2.cubicTo(
        size.width * 0.6789286,
        size.height * 0.09607727,
        size.width * 0.7000000,
        size.height * 0.08798420,
        size.width * 0.7000000,
        size.height * 0.07954545);
    path_2.cubicTo(
        size.width * 0.7000000,
        size.height * 0.07110670,
        size.width * 0.6789286,
        size.height * 0.06301364,
        size.width * 0.6414214,
        size.height * 0.05704659);
    path_2.cubicTo(
        size.width * 0.6039143,
        size.height * 0.05107955,
        size.width * 0.5530436,
        size.height * 0.04772727,
        size.width * 0.5000000,
        size.height * 0.04772727);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = const Color(0xffDDE1E4).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
