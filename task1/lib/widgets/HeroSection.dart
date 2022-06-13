import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        ClipPath(
          clipper: curveClipper(),
          child: Container(
            color: Colors.orange[100],
            height: width * 0.20,
          ),
        ),
        Positioned(
          top: width * 0.05,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: width * 0.25,
                height: width * 0.25,
                padding: EdgeInsets.all(height * 0.1),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFjZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class curveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 60;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
