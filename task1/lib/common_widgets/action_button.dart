import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String? label;
  final Widget? avatar;
  const ActionButton({Key? key, this.label, this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            label!,
          )),
      avatar: avatar,
      onPressed: () => {},
    );
  }
}
