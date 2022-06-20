import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String? label;
  final Widget? avatar;
  final void Function() onPressed;
  const ActionButton(
      {Key? key, this.label, this.avatar, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ActionChip(
      label: Container(
        padding: EdgeInsets.all(width * 0.02),
        child: Text(
          label!,
          style: TextStyle(fontSize: width*0.03),
        ),
      ),
      avatar: avatar,
      onPressed: onPressed,
    );
  }
}
