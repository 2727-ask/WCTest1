import 'package:flutter/material.dart';
import 'package:task1/constants.dart';

class NavigationIconCard extends StatelessWidget {
  final Icon? leadingIcon;
  final String? title;
  final void Function()? onTap;

  const NavigationIconCard({
    Key? key,
    this.leadingIcon,
    this.title, this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
        top: width * 0.02,
        left: width * 0.055,
        right: width * 0.055,
      ),
      child: InkWell(
        onTap:onTap,
        child: Card(
          elevation: 0,
          color: Constants.secondaryColourLight,
          child: ListTile(
            leading: leadingIcon!,
            title: Text(title!),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
