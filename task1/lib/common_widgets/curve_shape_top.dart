import 'package:flutter/material.dart';
import 'package:task1/constants.dart';

class CurveShapeTop extends StatelessWidget {
  const CurveShapeTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopCurveClipper(),
      child: Container(
        color: Constants.primaryColour,
      ),
    );
  }
}

class TopCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.moveTo(width * 0.7, 0);
    path.lineTo(width, 0);
    path.lineTo(width, width * 0.3);
    path.quadraticBezierTo(width * 0.7, width * 0.3, width * 0.7, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
