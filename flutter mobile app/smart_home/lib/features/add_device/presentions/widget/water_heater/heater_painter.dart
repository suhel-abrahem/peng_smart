import 'package:flutter/material.dart';

class HeaterPainter extends CustomPainter {
  final double temp;
  final double pressure;
  final bool upperOn;
  final bool lowerOn;

  HeaterPainter({
    required this.temp,
    required this.pressure,
    required this.upperOn,
    required this.lowerOn,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final bluePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    final redPaint = Paint()
      ..color = const Color.fromARGB(255, 253, 2, 2)
      ..style = PaintingStyle.fill;
    final orangePaint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;
    final yellowPaint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;
    final blackPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    final greenPaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;
    final outline = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    final greyOutline = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    final redOutline = Paint()..color = const Color.fromARGB(255, 121, 10, 10);
    final upperRect = Rect.fromLTWH(
      0,
      0,
      size.width * 0.5,
      size.height - (size.width * 0.8),
    );
    final lowerRect = Rect.fromLTWH(
      0,
      size.height - (size.width * 0.1),
      size.width * 0.5,
      size.width * 0.1,
    );
    final waterRect = Rect.fromLTWH(
      0,
      upperRect.bottom - (size.width * 0.025),
      size.width * 0.5,
      lowerRect.bottom -
          (lowerRect.height / 2) -
          (upperRect.bottom - (size.width * 0.025)),
    );
    final upperHeaterRect = Rect.fromLTWH(
      upperRect.right - (waterRect.width * 0.075),
      waterRect.height * 0.25,
      waterRect.width * 0.15,
      waterRect.height * 0.15,
    );
    final lowerHeaterRect = Rect.fromLTWH(
      upperRect.right - (waterRect.width * 0.075),
      waterRect.height * 0.75,
      waterRect.width * 0.15,
      waterRect.height * 0.15,
    );
    // Tank
    canvas.drawRect(
      waterRect,
      temp > 30
          ? yellowPaint
          : temp > 40
          ? orangePaint
          : temp > 50
          ? redPaint
          : bluePaint,
    );

    canvas.drawOval(upperRect, blackPaint);
    canvas.drawOval(upperRect, outline);
    canvas.drawArc(lowerRect, 0, 3.14, true, blackPaint);
    canvas.drawArc(lowerRect, 0, 3.14, true, outline);
    canvas.drawLine(
      Offset(upperRect.left, upperRect.top + upperRect.height / 2),
      Offset(upperRect.left, size.height - (lowerRect.height / 2)),
      outline,
    );
    canvas.drawLine(
      Offset(upperRect.right, upperRect.top + upperRect.height / 2),
      Offset(upperRect.right, size.height - (lowerRect.height / 2)),
      outline,
    );
    //heaters
    // upper heater
    canvas.drawArc(
      upperHeaterRect,
      3.14 * (3 / 2),
      3.14,
      true,
      upperOn ? redPaint : greenPaint,
    );
    //heater lines
    canvas.drawLine(
      Offset(
        upperHeaterRect.center.dx,
        upperHeaterRect.top + upperHeaterRect.height / 4,
      ),
      Offset(
        waterRect.width * 0.7,
        upperHeaterRect.top + upperHeaterRect.height / 4,
      ),
      upperOn ? redOutline : greyOutline,
    );
    canvas.drawLine(
      Offset(upperHeaterRect.center.dx, upperHeaterRect.center.dy),
      Offset(waterRect.width * 0.8, upperHeaterRect.center.dy),
      upperOn ? redOutline : greyOutline,
    );
    canvas.drawLine(
      Offset(
        upperHeaterRect.center.dx,
        upperHeaterRect.top + upperHeaterRect.height * 0.75,
      ),
      Offset(
        waterRect.width * 0.7,
        upperHeaterRect.top + upperHeaterRect.height * 0.75,
      ),
      upperOn ? redOutline : greyOutline,
    );
    // lower heater
    canvas.drawArc(
      lowerHeaterRect,
      3.14 * (3 / 2),
      3.14,
      true,
      lowerOn ? redPaint : greenPaint,
    );
    //heater lines
    canvas.drawLine(
      Offset(
        lowerHeaterRect.center.dx,
        lowerHeaterRect.top + lowerHeaterRect.height / 4,
      ),
      Offset(
        waterRect.width * 0.7,
        lowerHeaterRect.top + lowerHeaterRect.height / 4,
      ),
      lowerOn ? redOutline : greyOutline,
    );
    canvas.drawLine(
      Offset(lowerHeaterRect.center.dx, lowerHeaterRect.center.dy),
      Offset(waterRect.width * 0.8, lowerHeaterRect.center.dy),
      lowerOn ? redOutline : greyOutline,
    );
    canvas.drawLine(
      Offset(
        lowerHeaterRect.center.dx,
        lowerHeaterRect.top + lowerHeaterRect.height * 0.75,
      ),
      Offset(
        waterRect.width * 0.7,
        lowerHeaterRect.top + lowerHeaterRect.height * 0.75,
      ),
      lowerOn ? redOutline : greyOutline,
    );
    // // Text
    final textPainter = TextPainter(
      text: TextSpan(
        text:
            "Temp: ${temp.toStringAsFixed(1)}°C\nPressure: ${pressure.toStringAsFixed(1)} bar\n",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    final upperHeaterTextPainter = TextPainter(
      text: TextSpan(
        text: upperOn ? "Upper Heater: ON" : "Upper Heater: OFF",
        style: TextStyle(
          color: upperOn
              ? const Color.fromARGB(255, 121, 10, 10)
              : Colors.green,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    final lowerHeaterTextPainter = TextPainter(
      text: TextSpan(
        text: lowerOn ? "Lower Heater: ON" : "Lower Heater: OFF",
        style: TextStyle(
          color: lowerOn
              ? const Color.fromARGB(255, 121, 10, 10)
              : Colors.green,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(waterRect.left + 10, waterRect.center.dy));
    upperHeaterTextPainter.layout();
    upperHeaterTextPainter.paint(
      canvas,
      Offset(
        waterRect.right + 10,
        upperHeaterRect.center.dy - upperHeaterRect.height,
      ),
    );
    lowerHeaterTextPainter.layout();
    lowerHeaterTextPainter.paint(
      canvas,
      Offset(
        waterRect.right + 10,
        lowerHeaterRect.center.dy - lowerHeaterRect.height,
      ),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
