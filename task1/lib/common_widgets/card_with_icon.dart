import 'package:flutter/material.dart';
import 'package:task1/constants.dart';

class CardWithIcon extends StatelessWidget {
  final String? title;
  final String? location;
  final String? year;
  final IconData? icon;
  const CardWithIcon(
      {Key? key, this.title, this.location, this.year, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 0,
      child: SizedBox(
        width: width,
        height: width * 0.14,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: width * 0.2,
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundColor: Constants.primaryColour,
                radius: 15,
                child: Icon(
                  icon!,
                  size: 13,
                  color: Constants.darkColour,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                      color:  Constants.darkColour,
                      fontSize: width * 0.035,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: width * 0.3,
                        margin: const EdgeInsets.only(top: 1),
                        child: Text(
                          location!,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Constants.greyColor,
                            fontSize: width * 0.023,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.3,
                        child: Text(
                          year!,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color:  Constants.greyColor,
                            fontSize: width * 0.022,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
