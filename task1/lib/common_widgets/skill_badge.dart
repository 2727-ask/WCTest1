import 'package:flutter/material.dart';

class SkillBadge extends StatelessWidget {
  final String? title;
  final Color backgroundColor;
  final Color titleColor;
  const SkillBadge({Key? key, this.title, this.backgroundColor=const Color.fromARGB(255, 247, 207, 78), this.titleColor=Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(width * 0.01),
      child: Chip(
        label: Text(
          title!,
          style:TextStyle(color:titleColor),
        ),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
