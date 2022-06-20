import 'package:flutter/material.dart';

import '../../constants.dart';

class MyTextFormField extends StatelessWidget {
  final String? title;
  const MyTextFormField({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: width * 0.015, top: width * 0.03 ),
            width: width,
            child: Text(
              title!,
              style: TextStyle(
                  color:  Constants.secondaryColour,
                  fontFamily: "Poppins",
                  fontSize: width * 0.04),
            ),
          ),
          SizedBox(
            height: width*0.12,
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
