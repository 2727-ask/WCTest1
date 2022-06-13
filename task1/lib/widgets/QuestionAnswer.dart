import 'package:flutter/material.dart';

class QuestionAnswer extends StatelessWidget {
  final String? question;
  final String? answer;
  const QuestionAnswer({Key? key, this.question, this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: EdgeInsets.all(width * 0.042),
      child: Column(
        children: [
          Container(
            width: width,
            child: Text(
              question!,
              style: TextStyle(fontSize: width * 0.04),
            ),
          ),
          Container(
            width: width,
            margin: EdgeInsets.only(
              top: width * 0.02,
            ),
            child: Text(
              answer!,
              style: TextStyle(fontSize: width * 0.034, color: Colors.blueGrey),
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
