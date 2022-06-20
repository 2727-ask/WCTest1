import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String? userName;
  final String? designation;

  const UserInfo({Key? key, this.userName, this.designation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: width * 0.1),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: width * 0.03),
            child: Text(
              userName!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.05,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: width * 0.02),
            child: Text(
              designation!,
              style: TextStyle(
                fontSize: width * 0.03,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
