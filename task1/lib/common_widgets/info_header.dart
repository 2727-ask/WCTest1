import 'package:flutter/material.dart';

class InfoHeader extends StatelessWidget {
  final String? title;
  final Icon? icon;

  const InfoHeader({Key? key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var textColor = Colors.grey;
    return Container(
        margin: EdgeInsets.only(left: width * 0.03),
        child: Row(
          children: [
            icon!,
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                title!,
                style: TextStyle(color: textColor, fontSize: width * 0.05),
              ),
            ),
          ],
        ));
  }
}
