import 'package:flutter/material.dart';
import 'package:task1/constants.dart';

class PersonalInfo extends StatelessWidget {
  final String? title;
  final String? value;
  const PersonalInfo({Key? key, this.title, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var textColor2 = Constants.secondaryColour;
    var textColor3 = Constants.darkColour;
    return Container(
      margin: EdgeInsets.all(width * 0.03),
      width: width * 0.9,
      child: Column(
        children: [
          SizedBox(
            width: width * 0.9,
            child: Text(
              title!,
              style: TextStyle(color: textColor2, fontSize: width * 0.03),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: width * 0.01),
            width: width * 0.9,
            child: Text(
              value!,
              style: TextStyle(color: textColor3, fontSize: width * 0.04),
            ),
          ),
          Divider(color: textColor2),
        ],
      ),
    );
  }
}
