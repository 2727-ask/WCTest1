import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class WisCircleLogoWithIcons extends StatelessWidget {
  const WisCircleLogoWithIcons({
    Key? key,
    required this.width,
    required this.color,
    required this.NotificationCount,
  }) : super(key: key);

  final double width;
  final Color color;
  final int NotificationCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: width*0.08),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: width * 0.02),
            child: InkWell(
              child: CircleAvatar(
                backgroundColor: Constants.lightColor,
                child: Badge(
                  badgeColor: color,
                  showBadge: NotificationCount == 0 ? false : true,
                  badgeContent: Text(
                    NotificationCount.toString(),
                    style: (const TextStyle(
                        color: Constants.darkColour,
                        fontWeight: FontWeight.bold)),
                  ),
                  child: const Icon(
                    Icons.people_alt_outlined,
                    color: Constants.greyColor,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: width * 0.02),
            child: const InkWell(
              child: CircleAvatar(
                backgroundColor: Constants.lightColor,
                child: Icon(
                  Icons.call,
                  color: Constants.greyColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
