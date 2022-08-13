import 'package:flutter/material.dart';

class BackgroundClipper_2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.1437500, size.height * 0.0020000);
    path0.quadraticBezierTo(size.width * 0.1453125, size.height * 0.1985000,
        size.width * 0.1412500, size.height * 0.2880000);
    path0.quadraticBezierTo(size.width * 0.1371875, size.height * 0.4265000,
        size.width * 0.1400000, size.height * 0.4980000);
    path0.quadraticBezierTo(size.width * 0.1375000, size.height * 0.6160000,
        size.width * 0.1225000, size.height * 0.7380000);
    path0.quadraticBezierTo(size.width * 0.0865625, size.height * 1.0410000,
        size.width * 0.0337500, size.height * 0.9980000);
    path0.lineTo(size.width * 0.1262500, size.height * 0.9980000);
    path0.lineTo(size.width * 0.5012500, size.height * 0.9980000);
    path0.lineTo(size.width * 0.9975000, size.height * 0.9960000);
    path0.lineTo(size.width * 0.9975000, size.height * 0.0020000);
    path0.lineTo(size.width * 0.4987500, size.height * 0.0040000);
    path0.lineTo(size.width * 0.0400000, size.height * 0.0020000);
    path0.lineTo(size.width * 0.1437500, size.height * 0.0020000);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
