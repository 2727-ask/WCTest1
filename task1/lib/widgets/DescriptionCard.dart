import 'package:flutter/material.dart';

class DescriptionCard extends StatelessWidget {
  final String? title;
  final String? description;
  const DescriptionCard({Key? key, this.title, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var textColor = Colors.grey;
    var textColor2 = Colors.blueGrey;
    return Column(
      children: [
        SizedBox(
          width: width,
          child: Text(
            title!,
            style: TextStyle(
              fontSize: width * 0.045,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: width * 0.03),
          child: Text(
            description!,
            style: TextStyle(
              color: textColor2,
              fontSize: width * 0.035,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
