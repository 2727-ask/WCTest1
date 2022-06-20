import 'package:flutter/material.dart';

import '../constants.dart';

class MyNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final IconData? icon;
  final Color? navbarColor;
  const MyNavigationBar({Key? key, this.title, this.icon, this.navbarColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color:  Constants.darkColour, //change your color here
      ),
      elevation: 0,
      backgroundColor: navbarColor,
      centerTitle: true,
      title: Text(
        title!,
        style:
            const TextStyle(color:Constants.darkColour, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: Icon(icon),
          color: Constants.darkColour,
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(20.0);
  }
}
