import 'package:flutter/material.dart';
import 'package:task1/constants.dart';
import 'package:badges/badges.dart';

class WisCircleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int NotificationCount = 1;
  static const Color color = Color.fromARGB(255, 255, 187, 0);

  const WisCircleAppBar({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Constants.primaryColour,
      title: Container(
        width: width * 0.5,
        padding: EdgeInsets.all(width * 0.05),
        child: const Image(
          image: Constants.logo,
        ),
      ),
      actions: [
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
    );
  }

  static final _appBar = AppBar();

  @override
  Size get preferredSize => _appBar.preferredSize;
}
