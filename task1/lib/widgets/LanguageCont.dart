// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LanguageCont extends StatelessWidget {
  const LanguageCont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top:width * 0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "English",
            style: TextStyle(
              fontSize: width * 0.045,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Expert",
            style: TextStyle(
                fontSize: width * 0.035,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}
