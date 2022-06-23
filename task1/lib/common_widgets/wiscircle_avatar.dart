import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';

class WisCircleAvatar extends StatelessWidget {
  const WisCircleAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CircleAvatar(
      backgroundImage: const NetworkImage(
        "https://avatars0.githubusercontent.com/u/8264639?s=460&v=4",
      ),
      radius: width*0.06,
    );
  }
}
