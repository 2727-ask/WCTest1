import 'package:flutter/material.dart';

class SkillBadge extends StatelessWidget {
  final String? title;
  const SkillBadge({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left:width * 0.02),
      child: Chip(
        label: Text(
          title!,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 247, 207, 78),
      ),
    );
  }
}
