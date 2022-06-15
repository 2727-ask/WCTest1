// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ExpertiseCard extends StatelessWidget {
  final String? title;
  final String? status;
  const ExpertiseCard({Key? key, this.title, this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: width * 0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(
              fontSize: width * 0.045,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            status!,
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
