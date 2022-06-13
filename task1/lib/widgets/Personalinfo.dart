import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  final String? title;
  final String? value;
  const PersonalInfo({Key? key, this.title, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var textColor = Colors.grey;
    var textColor2 = Colors.blueGrey;
    var textColor3 = Colors.black87;
    return Container(
      margin: EdgeInsets.all(width * 0.03),
      width: width * 0.9,
      child: Column(
        children: [
          Container(
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
